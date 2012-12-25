# -*- shell-script -*-
# .bashrc
#
export ZKIT=${ZKIT=${HOME}/.zkit}
if [[ -r ${HOME}/.zkitrc ]]; then
    source ${HOME}/.zkitrc
fi
__zkit_bash_env=${BASH_ENV}
unset BASH_ENV
source ${ZKIT}/bash/startup.sh
if [[ -n $__zkit_bash_env ]]; then
    export BASH_ENV=${__zkit_bash_env}
fi
