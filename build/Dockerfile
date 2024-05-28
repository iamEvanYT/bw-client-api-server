FROM node:latest

WORKDIR /app
COPY . .
COPY entrypoint.sh /app/entrypoint.sh
RUN npm install -g @bitwarden/cli

# Default environment variables
ENV BW_SERVER=https://vault.example.com
ENV BW_CLIENTID=user.xxxxx-xxxxx-xxxx-xxxx
ENV BW_CLIENTSECRET=xxxxxxxxxxxxxxxx
ENV BW_PASSWORD=f5K7pTtIzi6c
ENV HOSTNAME=localhost
ENV PORT=3000

EXPOSE $PORT

ENTRYPOINT ["sh", "/app/entrypoint.sh"]