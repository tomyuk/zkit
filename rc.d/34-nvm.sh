# -*- shell-script -*-
#
# nvm for Node.js
#

# nvm
if [[ -d ${HOME}/.nvm ]]; then
    source ${HOME}/.nvm/nvm.sh
    hash -r
    eval "$(npm completion)"
fi

# eof
