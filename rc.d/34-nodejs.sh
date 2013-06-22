# -*- shell-script -*-
#
# Node.js -- nvm
#

if
    [ -n "${BASH_VERSION:-}" -o -n "${ZSH_VERSION:-}" ] &&
    test "`ps -p $$ -o comm=`" != dash &&
    test "`ps -p $$ -o comm=`" != sh
then
    # nvm
    if [[ -d ${HOME}/.nvm ]]; then
	source ${HOME}/.nvm/nvm.sh
    fi
fi

# eof
