#!/usr/bin/env zsh
#
# 

autoload -Uz compinit

if zstyle -t ':zkit:' compinit_secure; then
    compinit -d $ZKIT/var/zsh_compdump
else
    # ディレクトリについてセキュリティ・チェックをしない場合
    compinit -d $ZKIT/var/zsh_compdump -u
fi

setopt auto_list               # 補完候補が複数ある場合、一覧を表示します。
setopt auto_menu               # 補完キー (Tab, Ctrl+I) を連打した場合、補完候補順に補完します。
setopt auto_param_keys         # カッコの対応などを自動的に補完します。
setopt auto_param_slash        # ディレクトリ名の補完のとき / を自動的に付加します。
setopt auto_resume             # サスペンド中のプロセスと同じコマンド名を実行した場合、レジュームします。
setopt No_beep                 # ビープ音を無効にします。
setopt correct                 # コマンドのスペルチェックを行います。
setopt list_types              # auto_list の補完候補一覧で、ls -F のようにファイルの種別をマーク表示。
setopt magic_equal_subst       # コマンドラインの引数で --prefix=/usr などの = 以降でも補完できる。
setopt print_eightbit          # 8ビット目を通すようになり、日本語のファイル名などを見られる。

# 大文字小文字を区別しません。大文字入力時のみ区別します。 
#zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'

# 補完候補が3個以上のときタブ補完をカーソル移動できます。
zstyle ':completion:*:default' menu select=3

zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}
zstyle ':completion:*' use-cache on
zstyle ':completion:*' cache-path ${ZKIT}/var/cache

# Completing process IDs with menu selection:

zstyle ':completion:*:*:kill:*' menu yes select
zstyle ':completion:*:kill:*'   force-list always


# if [[ -r /etc/bash_completion ]]; then
# 	. /etc/bash_completion
# fi

# if [[ -r ${HOME}/.private/etc/bash_completion ]]; then
# 	. ${HOME}/.private/etc/bash_completion
# fi

autoload -Uz bashcompinit
bashcompinit

# emulate sh
# setopt bash_rematch
# . /usr/share/bash-completion/bash_completion
# unsetopt bash_rematch

# setopt null_glob
# for i in /etc/bash_completion.d/[0-9a-zA-Z]*.(sh|bash); do
#     if [[ -r "$i" ]]; then
# 	echo source $i
#     	source "$i"
#     fi
# done
# unsetopt null_glob
# emulate zsh
zstyle ':completion:*:my-accounts' users-hosts \
    git@repo repo@repo \
    tomo@ \
    root@ \
    hostmaster@
