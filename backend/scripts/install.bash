#!bin/bash
# makes sure the folder containing the script will be the root folder
cd "$(dirname "$0")" || exit

source ../../config/config.common.env
source modules.env

echo -e "${GREEN} [ info ] installing ${NC} BACKEND module"

function install() {
    for t in ${INSTALL_PROJECT_MODULES[@]}; do
        if [ -f ../$t/scripts/install.bash ]; then
            bash ../$t/scripts/install.bash
        fi
    done
}

install