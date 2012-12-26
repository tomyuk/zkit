#!/usr/bin/env zsh
#
# 対話環境時の設定

if [[ -n $PS1 ]]; then
    bindkey -e
    bindkey -d
    bindkey ' ' magic-space

    #
    autoload -Uz select-word-style
    select-word-style normal
    WORDCHARS='*?_-.[]~=&;!#$%^(){}<>'

    zstyle ':zle:*' word-chars ' _-.,/;@:$='
    zstyle ':zle:*' word-style unspecified
    zstyle ':zle:*' skip-whitespace-first false	# wordに後続する空白はまずとばす

    # autojump
    source ${ZKIT}/lib/autojump.zsh
    array_pack -r fpath			# 追加された重複するものを後方優先で取り除く

    # run-help
    unalias run-help
    autoload -Uz run-help

    FCEDIT="emacs -nw -Q --eval '(setq backup-inhibited t)'"
fi
