# -*- shell-script -*-
#
# Node.js -- nvm
#

if [[ -d ${HOME}/.nodebrew ]]; then
    export PATH=$HOME/.nodebrew/current/bin:$PATH
    nodebrew use default
fi

# eof
