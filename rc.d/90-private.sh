#!/usr/bin/env zsh
#
# 90-private.sh
#

if [[ -n "${__zkit_path[*]:-}" ]]; then
    pathmunge "${__zkit_path[@]}"
fi

if [[ -n "${ZSH_VERSION:-}" ]]; then
    suffix=.zsh
else
    suffix=.bash
fi

zkit_private="${ZKIT_PRIVATE:-${HOME:-}/.zkit_private}"
host_name="${HOST:-${HOSTNAME:-$(hostname)}}"

__rc="${zkit_private}/rc.d/host-${host_name}${suffix}"
if [[ ! -r "$__rc" ]]; then
    __rc="${zkit_private}/rc.d/host-${host_name%%.[[:alnum:]]*}${suffix}"
    if [[ ! -r "$__rc" ]]; then
	__rc=""
    fi
fi
[[ -n "$__rc" ]] && source "$__rc"
unset __rc zkit_private host_name suffix
