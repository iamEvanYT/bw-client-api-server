 #!/bin/sh

# Configure Bitwarden server
bw config server ${BW_SERVER}

# Login to Bitwarden
bw login --apikey ${BW_CLIENTID} ${BW_CLIENTSECRET}

# Unlock Bitwarden vault
bw unlock --passwordenv ${BW_PASSWORD}

# Start the Bitwarden service
bw serve --port ${PORT} --hostname ${HOSTNAME}