#!/usr/bin/env zsh
#
# order file         login interactive batch
# ----- ------------ ----- ----------- -----
# 1.    ~/.zshenv    O     O           O
# 2.    ~/.zprofile  O
# 3.    ~/.zshrc     O     O
# 4.    ~/.zlogin    O
#
# このファイルは bin/zkit_setup.zsh で ~/.zshenv へ配置される
setopt No_GLOBAL_RCS	# /etc/zsh* は読み込まない

export ZKIT=${ZKIT=${HOME}/.zkit}
export ZDOTDIR=${ZKIT}/zsh # .zprofile 以降の zsh 起動スクリプトははこのディレクトリーから読み込む
