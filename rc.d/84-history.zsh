#!/usr/bin/env zsh
#
#
setopt hist_expire_dups_first
HISTFILE=${ZKIT}/var/zsh_history
HISTSIZE=12000
SAVEHIST=10000

setopt append_history          # 複数の zsh を使用する場合、履歴を上書きせずに追記します。
setopt hist_ignore_all_dups    # 履歴に重複がある場合、古いコマンド行を削除します。
setopt hist_reduce_blanks      # 履歴追加時にスペースは削除します。
setopt share_history           # シェルのプロセスごとに履歴を共有します。
