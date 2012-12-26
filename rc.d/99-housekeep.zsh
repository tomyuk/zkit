#!/usr/bin/env zsh

fpath=( ${ZDOTDIR}/functions $fpath )	# ${ZDOTDIR}/functions を先頭に
array_pack fpath			# 重複を取り除く
