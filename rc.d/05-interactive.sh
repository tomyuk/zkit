#
#
#

bindkey -e
bindkey -d
bindkey ' ' magic-space

#
autoload -Uz select-word-style
select-word-style default
zstyle ':zle:*' word-chars " _-.,/;@"
zstyle ':zle:*' word-style unspecified
zstyle ':zle:*' skip-whitespace-first false


setopt no_check_jobs no_hup notify
setopt ignore_eof

setopt short_loops           # 制御構文で短縮形を使用する

# for cd
setopt auto_cd                 # 指定したコマンドが存在せず、ディレクトリ名と一致した場合 cd します。
#setopt autopushd               # cd したディレクトリをディレクトリスタックに push します。
