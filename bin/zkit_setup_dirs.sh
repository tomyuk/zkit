#!/usr/bin/env bash
# zkit必要ディレクトリ作成スクリプト

ZKIT="${ZKIT:-${HOME:-}/.zkit}"
ZKIT_PRIVATE="${ZKIT_PRIVATE:-${HOME:-}/.zkit_private}"

echo "zkitディレクトリ構造を作成中..."

# 基本ディレクトリ作成
directories=(
    "${ZKIT}/var"
    "${ZKIT}/var/tmp"
    "${ZKIT}/var/cache"
    "${ZKIT}/var/log"
    "${ZKIT_PRIVATE}/bin"
    "${ZKIT_PRIVATE}/rc.d"
    "${ZKIT_PRIVATE}/secrets"
    "${ZKIT_PRIVATE}/share"
    "${ZKIT_PRIVATE}/templates"
)

for dir in "${directories[@]}"; do
    if [[ ! -d "$dir" ]]; then
        mkdir -p "$dir"
        echo "作成: $dir"
    else
        echo "存在: $dir"
    fi
done

# パーミッション設定
chmod 700 "${ZKIT}/var"
chmod 700 "${ZKIT_PRIVATE}/secrets"

# 履歴ファイル作成
if [[ ! -f "${ZKIT}/var/zsh_history" ]]; then
    touch "${ZKIT}/var/zsh_history"
    chmod 600 "${ZKIT}/var/zsh_history"
    echo "作成: ${ZKIT}/var/zsh_history"
fi

# bash履歴ファイル作成
if [[ ! -f "${ZKIT}/var/cache/bash_history" ]]; then
    touch "${ZKIT}/var/cache/bash_history"
    chmod 600 "${ZKIT}/var/cache/bash_history"
    echo "作成: ${ZKIT}/var/cache/bash_history"
fi

# zsh補完キャッシュディレクトリ
if [[ ! -d "${ZKIT}/var/cache" ]]; then
    mkdir -p "${ZKIT}/var/cache"
    chmod 700 "${ZKIT}/var/cache"
fi

echo "zkitディレクトリ構造の作成が完了しました。"
