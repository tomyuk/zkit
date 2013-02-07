#!/usr/bin/env zsh
#
# zsh/startup.sh
#

export ZKIT_PRIVATE=${ZKIT_PRIVATE=${HOME}/.zkit_private}

### fpath の設定
fpath=( ${ZDOTDIR}/functions $fpath )
export FPATH
autoload -Uz array_pack
array_pack fpath

autoload -Uz pathmunge
autoload -Uz envpathmunge
autoload -Uz zkit_utils
zkit_utils

#source ${ZKIT}/lib/zkit_utils.sh

umask ${zkit_umask:=0077}

# intrinsics
d=${ZKIT_PRIVATE}/intrinsics
hostname=$(hostname)
host=${d}/host-${hostname}
if [[ ! -r ${host} ]]; then
    host=${d}/host-${hostname%%.*}
    if [[ ! -r ${host} ]]; then
	host=
    fi
fi
if [[ -n ${host} ]]; then
    source ${host}
fi
unset d hostname host

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
            if [[ -n $PS1 ]] || $ZKIT_DEBUG; then
		source "$__i"
            else
		source "$__i" >/dev/null 2>&1
            fi
	fi
    done
}

__zkit_load_rc ${ZKIT}/rc.d/*.sh(N) ${ZKIT}/rc.d/*.zsh(N)

__zkit_load_rc ${ZKIT_PRIVATE}/rc.d/*.sh(N) ${ZKIT_PRIVATE}/rc.d/*.zsh(N)



# eof
