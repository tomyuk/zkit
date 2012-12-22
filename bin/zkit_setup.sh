#!/usr/bin/env zsh

ZKIT=${HOME}/.zkit

if [[ -a ${HOME}/.zshenv ]]; then
    rm -f ${HOME}/.zshenv
fi
cp ${ZKIT}/.zshenv ${HOME}/.zshenv

if [[ ! -d ${ZKIT}/var ]]; then
    mkdir ${ZKIT}/var
fi

###

PRIVATE=${HOME}/.private

