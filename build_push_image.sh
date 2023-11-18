#!/bin/bash

# Set your GitHub username and repository name
GH_USERNAME="mitubaby"
GH_REPO="todo-app"
GHCR_TOKEN="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"

# Login to GitHub Container Registry using your GitHub Token
echo "${GHCR_TOKEN}" | docker login ghcr.io -u "${GH_USERNAME}" --password-stdin

# Build and push Docker images 
docker push node:12-alpine
docker push mysql:5.7
