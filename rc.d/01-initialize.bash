#!/usr/bin/env bash
#
# 基本的な初期化
#

### for Zkit
if shopt -q login_shell; then
    zkit_login_shell=true
else
    zkit_login_shell=false
fi

zkit_root="${ZKIT:-${HOME:-}/.zkit}"
homebrew_prefix="${HOMEBREW_PREFIX:-}"

# 重要：必要なディレクトリを最初に作成
[[ ! -d "${zkit_root}/var" ]] && mkdir -p "${zkit_root}/var"
[[ ! -d "${zkit_root}/var/tmp" ]] && mkdir -p "${zkit_root}/var/tmp"
[[ ! -d "${zkit_root}/var/cache" ]] && mkdir -p "${zkit_root}/var/cache"

######################################################################
# PATH 追加
export PATH

### macOS + Homebrew PATH設定
# Homebrewパスを最優先に設定
if [[ -x /opt/homebrew/bin/brew ]]; then
    # Apple Silicon Mac
    eval "$(/opt/homebrew/bin/brew shellenv)"
    homebrew_prefix="/opt/homebrew"
elif [[ -x /usr/local/bin/brew ]]; then
    # Intel Mac
    eval "$(/usr/local/bin/brew shellenv)"
    homebrew_prefix="/usr/local"
fi
export HOMEBREW_PREFIX="$homebrew_prefix"

# システムパスの基本構成
path=(
    ${__zkit_path[@]:-}
    ${homebrew_prefix:+${homebrew_prefix}/sbin}
    ${homebrew_prefix:+${homebrew_prefix}/bin}
    /usr/local/sbin
    /usr/local/bin
    /usr/sbin
    /usr/bin
    /sbin
    /bin
)

unset zkit_root homebrew_prefix
