#!/usr/bin/env zsh

ZKIT=${HOME}/.zkit

if [[ -f ${HOME}/.zshenv ]]; then
    rm ${HOME}/.zshenv
fi
ln -s ${ZKIT}/.zshenv ${HOME}/.zshenv

###

PRIVATE=${HOME}/.local/private

function install_private () {

    if [[ -r ${PRIVATE}/$1 ]]; then
	if [[ -f ${HOME}/$2 ]]; then
	    rm ${HOME}/$2
	fi
	ln -s ${PRIVATE}/$1 ${HOME}/$2
	echo "Linked ${PRIVATE}/$1 -> ${HOME}/$2"
    fi
}


install_private fwknoprc .fwknoprc
install_private gitconfig .gitconfig
install_private ssh_config .ssh/config
