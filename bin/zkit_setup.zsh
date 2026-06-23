#!/usr/bin/env zsh
#
# Compatibility wrapper. The canonical implementation is bin/zkit_setup.
#

zkit_root="${ZKIT:-${HOME:-}/.zkit}"
setup_cmd="${zkit_root}/bin/zkit_setup"

if [[ ! -x "$setup_cmd" && -f "$setup_cmd" ]]; then
    chmod u+x "$setup_cmd" 2>/dev/null || true
fi

if [[ -x "$setup_cmd" ]]; then
    exec "$setup_cmd" "$@"
else
    print -u2 -- "Cannot execute zkit setup: $setup_cmd"
    exit 1
fi
