#!/bin/bash

SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )

function deploy {
    # deploy without .git folder and without this file
    zip -FSr $1 $2 -x '*.git*' '*deploy.sh' '*~*'
}

cd ..
deploy /home/ben/.factorio/mods/${SCRIPT_DIR##*/}.zip ${SCRIPT_DIR##*/}

echo; read -rsn1 -p "Press any key to continue . . ."; echo
