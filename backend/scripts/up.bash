#!bin/bash
# makes sure the folder containing the script will be the root folder
cd "$(dirname "$0")" || exit

source ../../config/config.common.env
source modules.env

echo -e "${GREEN} [ info ] build + create + start ${NC} BACKEND module"

function up() {
    for t in ${INSTALL_PROJECT_MODULES[@]}; do
        if [ -f ../$t/scripts/up.bash ]; then
            bash ../$t/scripts/up.bash
        fi
    done
}

up