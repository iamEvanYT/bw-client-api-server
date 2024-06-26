#!/bin/sh

# Function to handle termination signals
terminate() {
  echo "Terminating the Bitwarden service..."
  # Add any cleanup tasks here if needed
  exit 0
}

# Trap termination signals (SIGTERM, SIGINT)
trap terminate TERM INT

# Configure Bitwarden server
bw config server ${BW_SERVER}

# Login to Bitwarden
bw login --apikey ${BW_CLIENTID} ${BW_CLIENTSECRET}

# Start the Bitwarden service
bw serve --port ${PORT} --hostname ${HOSTNAME} &

# Wait for the background process to finish
wait $!
