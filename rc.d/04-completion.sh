#
#
autoload -Uz compinit
compinit

setopt auto_list               # 補完候補が複数ある場合、一覧を表示します。
setopt auto_menu               # 補完キー (Tab, Ctrl+I) を連打した場合、補完候補順に補完します。
setopt auto_param_keys         # カッコの対応などを自動的に補完します。
setopt auto_param_slash        # ディレクトリ名の補完のとき / を自動的に付加します。
setopt auto_resume             # サスペンド中のプロセスと同じコマンド名を実行した場合、レジュームします。
setopt NO_beep                 # ビープ音を無効にします。
setopt correct                 # コマンドのスペルチェックを行います。
setopt list_types              # auto_list の補完候補一覧で、ls -F のようにファイルの種別をマーク表示。
setopt magic_equal_subst       # コマンドラインの引数で --prefix=/usr などの = 以降でも補完できる。
setopt print_eightbit          # 8ビット目を通すようになり、日本語のファイル名などを見られる。

# 大文字小文字を区別しません。大文字入力時のみ区別します。 
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'

# 補完候補が3個以上のときタブ補完をカーソル移動できます。
zstyle ':completion:*:default' menu select=3

zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}

# if [[ -r /etc/bash_completion ]]; then
# 	. /etc/bash_completion
# fi

# if [[ -r ${HOME}/.private/etc/bash_completion ]]; then
# 	. ${HOME}/.private/etc/bash_completion
# fi

# autoload -Uz bashcompinit
# bashcompinit

# emulate ksh
# setopt null_glob
# for i in /etc/bash_completion.d/[0-9a-zA-Z]*.(sh|bash); do
#     if [[ -r "$i" ]]; then
# 	echo source $i
#     	source "$i"
#     fi
# done
# unsetopt null_glob
# emulate zsh


# if [[ -r ${HOME}/.private/etc/bash_aliases ]]; then
# 	. ${HOME}/.private/etc/bash_aliases
# fi
