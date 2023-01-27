#!bin/bash
# makes sure the folder containing the script will be the root folder
cd "$(dirname "$0")" || exit

source ../../../config/config.common.env

echo -e "${GREEN} [ info ] build + create + start ${NC} BACKEND / nginx Docker container service"

docker compose --env-file ../config.env --file ../docker-compose.yml up --detach --build

echo -e "${GREEN} [ info ] ${NC} BACKEND / nginx Docker container service ... ${GREEN} [ SUCCESS ] ${NC}"