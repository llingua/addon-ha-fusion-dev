#!/usr/bin/with-contenv bashio

# Get user configuration
LOG_LEVEL=$(bashio::config 'log_level' 'info')

# Set environment variables
export HASS_PORT=$(bashio::core.port)
export EXPOSED_PORT=$(bashio::addon.port "8099/tcp")
export LOG_LEVEL="${LOG_LEVEL}"

# Display configuration info
bashio::log.info "HA Fusion Custom Dev starting..."
bashio::log.info "Branch: develop (latest features)"
bashio::log.info "Log Level: ${LOG_LEVEL}"
bashio::log.info "Home Assistant Port: ${HASS_PORT}"
bashio::log.notice "🚀 Development Build - Latest features and Universal Bar Component"
bashio::log.warning "⚠️  This is a development version - may contain experimental features"

node server.js
