#!/bin/bash

: ${nodejs_default_version:=v0.10.12}

if [[ ! -d ${HOME}/.nodebrew ]]; then

    curl -L git.io/nodebrew | perl - setup

    export PATH=$HOME/.nodebrew/current/bin:$PATH
    hash -r

    # build & install default node.js
    nodebrew install-binary ${nodejs_default_version}
    nodebrew alias default ${nodejs_default_version}
    nodebrew use default
    hash -r

    # install npm
    curl https://npmjs.org/install.sh | bash
    
fi
