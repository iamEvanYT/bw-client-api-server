FROM node:18-alpine

WORKDIR /app
COPY . .
COPY entrypoint.sh /app/entrypoint.sh

# Install dependencies
RUN apk add --no-cache python3 make g++

# Install Bitwarden CLI
RUN npm install -g @bitwarden/cli

# Default environment variables
ENV BW_SERVER=https://vault.example.com
ENV BW_CLIENTID=user.xxxxx-xxxxx-xxxx-xxxx
ENV BW_CLIENTSECRET=xxxxxxxxxxxxxxxx
ENV HOSTNAME=localhost
ENV PORT=3000

EXPOSE $PORT

ENTRYPOINT ["sh", "/app/entrypoint.sh"]
