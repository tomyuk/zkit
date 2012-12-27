#!/usr/bin/env zsh
#
# 90-private.sh
#

pathmunge "${__zkit_path[@]}"

if [[ -n $ZSH_VERSION ]]; then
    suffix=.zsh
else
    suffix=.bash
fi

__rc=${ZKIT_PRIVATE}/rc.d/host-${HOST}${suffix}
if [[ ! -r $__rc ]]; then
    __rc=${ZKIT_PRIVATE}/rc.d/host-${HOST%%.[[:alnum:]]*}${suffix}
    if [[ ! -r $__rc ]]; then
	__rc=
    fi
fi
[[ -n $__rc ]] && source $__rc
unset __rc
