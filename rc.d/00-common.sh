# -*- shell-script -*-

csi=$'\e['
nl=$'\n'

zkit_root="${ZKIT:-${HOME:-}/.zkit}"
zkit_private="${ZKIT_PRIVATE:-${HOME:-}/.zkit_private}"

# 90-private.zsh reuse this
__zkit_path=(
    "${zkit_private}/bin"
    "${zkit_root}/bin"
    "${HOME:-}/.local/bin"
    "${HOME:-}/bin"
)

unset zkit_root zkit_private
