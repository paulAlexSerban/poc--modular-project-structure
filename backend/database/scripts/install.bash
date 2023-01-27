#!bin/bash
# makes sure the folder containing the script will be the root folder
cd "$(dirname "$0")" || exit

source ../../../config/config.common.env

echo -e "${GREEN} [ info ] installing ${NC} BACKEND / database "