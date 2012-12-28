# このファイルは通常対話環境時にのみ実行されるが、
# 非対話的スクリプトが BASH_ENV の指定により読み込む場合も想定して記述する。

export ZKIT_PRIVATE=${ZKIT_PRIVATE=${HOME}/.zkit_private}

umask ${zkit_umask:=0077}

source ${ZKIT}/bash/functions/zkit_core
require utils
require pathmunge

# bash<4.2 cannot declare global in function
source ${ZKIT}/bash/functions/colors.zkit

function __zkit_sort_rc () {
    for rc in $(shopt -s nullglob; echo $*); do
	echo $(basename $rc) $rc
    done | sort | cut -d' ' -f2
}

function __zkit_load_rc () {
    local __i
    for __i in $(__zkit_sort_rc $*); do
	if [[ -r "$__i" ]]; then
	    __zkit_msg "load:" $__i
            if [[ -n $PS1 ]] || $ZKIT_DEBUG; then
		source "$__i"
            else
		source "$__i" >/dev/null 2>&1
            fi
	fi
    done
}

# 対話型動作の場合のみ rc.d スクリプトの出力を表示する。
__zkit_load_rc ${ZKIT}/rc.d/*.sh ${ZKIT}/rc.d/*.bash
__zkit_load_rc ${ZKIT_PRIVATE}/rc.d/*.sh ${ZKIT_PRIVATE}/rc.d/*.bash
