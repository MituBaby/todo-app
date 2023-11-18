#!/bin/bash

# Masuk ke GitHub Container Registry
echo "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" | docker login ghcr.io -u mitubaby --password-stdin

# Membangun Docker image
docker compose up -d

# docker build -t ghcr.io/mitubaby/node:12-alpine .
# docker build -t ghcr.io/mitubaby/mysql:5.7 .

# mengubah nama image
docker tag node:12-alpine ghcr.io/mitubaby/node:12-alpine
docker tag mysql:5.7 ghcr.io/mitubaby/mysql:5.7


# Push image Docker ke GitHub Container Registry
docker push ghcr.io/mitubaby/node:12-alpine
docker push ghcr.io/mitubaby/mysql:5.7
