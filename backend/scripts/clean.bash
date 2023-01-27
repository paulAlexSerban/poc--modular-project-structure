#!bin/bash
# makes sure the folder containing the script will be the root folder
cd "$(dirname "$0")" || exit

source ../../config/config.common.env
source modules.env

echo -e "${GREEN} [ info ] cleaning ${NC} BACKEND module"

function clean() {
    for t in ${UNINSTALL_PROJECTS_MODULES[@]}; do
        if [ -f ../$t/scripts/clean.bash ]; then
            bash ../$t/scripts/clean.bash
        fi
    done
}

clean