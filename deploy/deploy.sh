#!/usr/bin/env bash
set -e

IMAGE="$1"
CONTAINER_NAME="${CONTAINER_NAME:-safebadge}"
PORT="${PORT:-8080}"

echo "Recebi imagem: $IMAGE"
echo "Parando container anterior (se existir)..."
if docker ps -a --format '{{.Names}}' | grep -Eq "^${CONTAINER_NAME}\$"; then
  docker rm -f "${CONTAINER_NAME}" || true
fi

echo "Fazendo pull da imagem..."
docker pull "$IMAGE"

echo "Iniciando novo container..."
docker run -d --name "${CONTAINER_NAME}" -p ${PORT}:8080 --restart always "$IMAGE"

echo "Deploy finalizado. Container: ${CONTAINER_NAME} Escutando porta ${PORT}"
