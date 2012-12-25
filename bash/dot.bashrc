# -*- shell-script -*-
# .bashrc
#
export ZKIT=${ZKIT=${HOME}/.zkit}
if [[ -r ${HOME}/.zkitrc ]]; then
    source ${HOME}/.zkitrc
fi
source ${ZKIT}/bash/startup.sh
