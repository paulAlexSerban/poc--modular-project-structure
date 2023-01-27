#!bin/bash
# makes sure the folder containing the script will be the root folder
cd "$(dirname "$0")" || exit

source ../../../config/config.common.env

echo -e "${GREEN} [ info ] stopping ${NC} BACKEND / traefik Docker container service"

docker compose --env-file ../config.env --file ../docker-compose.yml down --volumes --rmi all

echo -e "${GREEN} [ info ] stopping ${NC} BACKEND / traefik Docker container service ... ${GREEN} [ SUCCESS ] ${NC}"