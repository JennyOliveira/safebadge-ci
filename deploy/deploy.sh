#!/usr/bin/env bash
set -e

# variáveis
IMAGE="$1"            # ex: ghcr.io/USER/safebadge:tag  (passado pelo workflow)
CONTAINER_NAME="${CONTAINER_NAME:-safebadge}"
PORT="${PORT:-8080}"

echo "Deploying image: $IMAGE"

# pull da imagem
docker pull "$IMAGE"

# stop & remove container antigo se existir
if docker ps -a --format '{{.Names}}' | grep -Eq "^${CONTAINER_NAME}\$"; then
  echo "Stopping and removing previous container..."
  docker rm -f "${CONTAINER_NAME}" || true
fi

# run novo container
docker run -d --name "${CONTAINER_NAME}" -p ${PORT}:8080 --restart always "$IMAGE"

echo "Deployed ${IMAGE} into container ${CONTAINER_NAME} on port ${PORT}"
