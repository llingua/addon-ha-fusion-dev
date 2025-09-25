#!/usr/bin/with-contenv bashio

# Get user configuration
LOG_LEVEL=$(bashio::config 'log_level' 'info')

# Set environment variables
export HASS_PORT=$(bashio::core.port)
export EXPOSED_PORT=$(bashio::addon.port "8091/tcp")
export LOG_LEVEL="${LOG_LEVEL}"

# Display configuration info
bashio::log.info "🚀 HA Fusion Custom Dev starting..."
bashio::log.info "Branch: develop (latest features)"
bashio::log.info "Port: 8091 (unique to avoid conflicts)"
bashio::log.info "Data prefix: ha-fusion-custom-dev"
bashio::log.info "Log Level: ${LOG_LEVEL}"
bashio::log.info "Home Assistant Port: ${HASS_PORT}"
bashio::log.notice "🚀 Development Build - Latest features and Universal Bar Component"
bashio::log.warning "⚠️  This is a development version - may contain experimental features"
bashio::log.info "✅ Safe to run alongside other ha-fusion installations"

node server.js
