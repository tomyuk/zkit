#!/usr/bin/env zsh
#
#

zkit_var_dir="${ZKIT:-${HOME:-}/.zkit}/var"

# 履歴ディレクトリの確認と作成
if [[ ! -d "$zkit_var_dir" ]]; then
    mkdir -p "$zkit_var_dir"
    chmod 700 "$zkit_var_dir"
fi

HISTFILE="${zkit_var_dir}/zsh_history"

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

unset zkit_var_dir
