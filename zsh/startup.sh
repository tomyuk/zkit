#!/usr/bin/env zsh
#
# zsh/startup.sh
#

zkit_private=${zkit_private=${HOME}/.zkit_private}

### fpath の設定
fpath=( ${ZDOTDIR}/functions $fpath )
autoload -Uz pathmunge
autoload -Uz envpathmunge
autoload -Uz array_pack
autoload -Uz zkit_utils
zkit_utils

#source ${ZKIT}/lib/zkit_utils.sh

umask ${zkit_umask:=0077}




function __zkit_sort_rc () {
    emulate -L zsh
    setopt NULL_GLOB
    for rc in $*; do
	echo $(basename $rc) $rc
    done | sort | cut -d' ' -f2
}

function __zkit_load_rc () {
    local __i
    for __i in $(__zkit_sort_rc $*); do
	if [[ -r "$__i" ]]; then
	    # 対話型動作の場合のみ rc.d スクリプトの出力を表示する。
	    __zkit_msg "load:" $__i
            if [[ -n $PS1 ]] || $zkit_debug; then
		source "$__i"
            else
		source "$__i" >/dev/null 2>&1
            fi
	fi
    done
}

__zkit_load_rc ${ZKIT}/rc.d/*.sh ${ZKIT}/rc.d/*.zsh
__zkit_load_rc ${zkit_private}/rc.d/*.sh ${zkit_private}/rc.d/*.zsh

# eof
