#!/usr/bin/env zsh
#
#

# 履歴ディレクトリの確認と作成
if [[ ! -d "${ZKIT}/var" ]]; then
    mkdir -p "${ZKIT}/var"
    chmod 700 "${ZKIT}/var"
fi

HISTFILE=${ZKIT}/var/zsh_history

# 履歴ファイルが存在しない場合は作成
if [[ ! -f "$HISTFILE" ]]; then
    touch "$HISTFILE"
    chmod 600 "$HISTFILE"
fi

setopt hist_expire_dups_first
HISTSIZE=12000
SAVEHIST=10000



setopt append_history          # 複数の zsh を使用する場合、履歴を上書きせずに追記します。
setopt hist_ignore_all_dups    # 履歴に重複がある場合、古いコマンド行を削除します。
setopt hist_reduce_blanks      # 履歴追加時にスペースは削除します。
setopt share_history           # シェルのプロセスごとに履歴を共有します。
setopt inc_append_history      # コマンド実行時に即座に履歴に追加

