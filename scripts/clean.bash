#!bin/bash
# makes sure the folder containing the script will be the root folder
cd "$(dirname "$0")" || exit

source ../config/config.common.env

if [ "$1" = "dev" ]; then
    source ../config/config.development.env
fi

function clean() {
    for t in ${INSTALL_PROJECT_MODULES[@]}; do
        if [ -f ../$t/scripts/clean.bash ]; then
            bash ../$t/scripts/clean.bash
        fi
    done
}

clean
