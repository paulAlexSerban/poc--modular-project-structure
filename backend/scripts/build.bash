#!bin/bash
# makes sure the folder containing the script will be the root folder
cd "$(dirname "$0")" || exit

source ../../config/config.common.env
source modules.env

echo -e "${GREEN} [ info ] building ${NC} BACKEND module"

function build() {
    for t in ${INSTALL_PROJECT_MODULES[@]}; do
        if [ -f ../$t/scripts/build.bash ]; then
            bash ../$t/scripts/build.bash
        fi
    done
}

build