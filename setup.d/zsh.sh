#!/usr/bin/env bash
######################################################################
## Setup Zsh staff

zsh=$(type -p zsh)
if [[ -n $zsh ]]; then
    __zkit_install zsh/zshenv ${HOME}/.zshenv
fi
