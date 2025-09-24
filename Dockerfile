# ha base image
ARG BUILD_FROM

# first stage, can't use alpine for building armv7
FROM node:22 AS builder
WORKDIR /app

### remote
# clone, build and remove repo example data
# This add-on always installs from develop branch (latest features)
RUN git clone --depth 1 -b develop https://github.com/llingua/ha-fusion-custom . && \
  npm install --verbose && \
  npm run build && \
  npm prune --omit=dev && \
  rm -rf ./data/*

# ### local
# COPY rootfs .
# RUN npm install --verbose && \
#   npm run build && \
#   npm prune --omit=dev

# second stage
FROM $BUILD_FROM
WORKDIR /rootfs

# copy files to /rootfs
COPY --from=builder /app/build ./build
COPY --from=builder /app/node_modules ./node_modules
COPY --from=builder /app/server.js .
COPY --from=builder /app/package.json .

# copy run
COPY run.sh /

# install node and bashio, symlink persistent data and chmod run
RUN apk add --no-cache nodejs-current bash jq curl && \
  ln -s /rootfs/data /data && \
  chmod a+x /run.sh

# install bashio for home assistant add-on functionality
RUN curl -J -L -o /tmp/bashio.tar.gz \
  "https://github.com/hassio-addons/bashio/archive/v0.16.2.tar.gz" && \
  mkdir /tmp/bashio && \
  tar zxvf /tmp/bashio.tar.gz --strip 1 -C /tmp/bashio && \
  mv /tmp/bashio/lib /usr/lib/bashio && \
  ln -s /usr/lib/bashio/bashio /usr/bin/bashio && \
  rm -rf /tmp/bashio.tar.gz /tmp/bashio

# set environment
ENV PORT=8091 \
  NODE_ENV=production \
  ADDON=true \
  DATA_PREFIX=ha-fusion-custom-dev

CMD [ "/run.sh" ]
