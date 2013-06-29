#!/bin/bash

: ${default_nodejs_version:=v0.10.12}

if [[ ! -d ${HOME}/.nodebrew ]]; then

    curl -L git.io/nodebrew | perl - setup

    export PATH=$HOME/.nodebrew/current/bin:$PATH
    hash -r

    # build & install default node.js
    nodebrew install-binary ${default_nodejs_version}
    nodebrew use ${default_nodejs_version}
    nodebrew alias stable ${default_nodejs_version}
    hash -r

    # install npm
    curl https://npmjs.org/install.sh | bash
    
fi

