# Build Command
```sh
docker build -t bw-client-api-server ./build
```

# Run Command
```sh
docker run --env-file .env -p 3000:3000 ghcr.io/iamEvanYT/bw-client-api-server
```