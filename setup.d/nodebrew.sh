#!/usr/bin/env bash

: ${nodejs_default_version:="v0.10.12"}


if [[ ! -d ${HOME}/.nodebrew ]]; then
    curl -L git.io/nodebrew | perl - setup
    export PATH=${HOME}/.nodebrew:$PATH
    hash -r
    nodebrew install-binary ${nodejs_default_version}
    nodebrew alias stable ${nodejs_default_version}
    nodebrew alias default ${nodejs_default_version}
    nodebrew use default
fi
