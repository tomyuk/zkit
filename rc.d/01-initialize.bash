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

# 重要：必要なディレクトリを最初に作成
[[ ! -d "${ZKIT}/var" ]] && mkdir -p "${ZKIT}/var"
[[ ! -d "${ZKIT}/var/tmp" ]] && mkdir -p "${ZKIT}/var/tmp"
[[ ! -d "${ZKIT}/var/cache" ]] && mkdir -p "${ZKIT}/var/cache"

######################################################################
# PATH 追加
export PATH

### macOS + Homebrew PATH設定
# Homebrewパスを最優先に設定
if [[ -x /opt/homebrew/bin/brew ]]; then
    # Apple Silicon Mac
    eval "$(/opt/homebrew/bin/brew shellenv)"
    HOMEBREW_PREFIX="/opt/homebrew"
elif [[ -x /usr/local/bin/brew ]]; then
    # Intel Mac
    eval "$(/usr/local/bin/brew shellenv)"
    HOMEBREW_PREFIX="/usr/local"
fi

# システムパスの基本構成
path=(
    $__zkit_path
    ${HOMEBREW_PREFIX}/sbin
    ${HOMEBREW_PREFIX}/bin
    /usr/local/sbin
    /usr/local/bin
    /usr/sbin
    /usr/bin
    /sbin
    /bin
)
