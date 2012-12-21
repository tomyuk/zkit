#
# 対話環境時の設定

HISTSIZE=10000
HISTFILESIZE=10000
HISTCONTROL=ignoredups
export HISTSIZE HISTFILESIZE HISTCONTROL
IGNOREEOF=4

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
. $ZKIT/lib/autojump.zsh

# run-help
unalias run-help
autoload -Uz run-help
