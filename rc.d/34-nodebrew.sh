# -*- shell-script -*-
#
# nodebrew for Node.js

if [[ -d ${HOME}/.nodebrew ]]; then
    export PATH=$HOME/.nodebrew/current/bin:$PATH
fi
