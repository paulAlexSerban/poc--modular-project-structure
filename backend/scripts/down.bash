#!bin/bash
# makes sure the folder containing the script will be the root folder
cd "$(dirname "$0")" || exit

source ../../config/config.common.env
source modules.env

echo -e "${GREEN} [ info ] stopping ${NC} BACKEND module"

function down() {
    for t in ${UNINSTALL_PROJECTS_MODULES[@]}; do
        if [ -f ../$t/scripts/down.bash ]; then
            bash ../$t/scripts/down.bash
        fi
    done
}

down