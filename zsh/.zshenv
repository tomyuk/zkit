#!/usr/bin/env zsh
#
# order file         login interactive batch
# ----- ------------ ----- ----------- -----
# 1.    ~/.zshenv    O     O           O
# 2.    ~/.zprofile  O
# 3.    ~/.zshrc     O     O
# 4.    ~/.zlogin    O

setopt No_GLOBAL_RCS	# /etc/zsh* は読み込まない

export ZKIT=${ZKIT=${HOME}/.zkit}
if [[ -r ${HOME}/.zkitrc ]]; then
    source ${HOME}/.zkitrc
fi
export ZDOTDIR=${ZKIT}/zsh
