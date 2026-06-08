#!/usr/bin/env zsh
# Alias

if [[ -n $PS1 ]]; then

    alias -g DN=/dev/null
    alias -g G='| egrep -a'
    alias -g H='| head'
    alias -g HL='| head -20'
    alias -g L='| less'
    alias -g LS='| less -S'
    alias -g TL='| tail -20'
    alias -g T='| tail'
    alias -g S='| sort'
    alias -g SU='| sort -u'

    alias -g LL='2>&1 | less'
    alias -g NUL='>/dev/null 2>&1'

    alias -g EG='|& egrep -a'
    alias -g EH='|& head'
    alias -g EL='|& less'
    alias -g ELS='|& less -S'
    alias -g ETL='|& tail -20'
    alias -g ET='|& tail'

    autoload -Uz zmv          # 一括リネーム等に便利です。
    alias zmv="noglob zmv -W" # zmv を緩く指定できるようにします。 $ zmv *.txt file-*.txt

    
    function mosh () {
	fwk $1 >/dev/null 2>&1
	$(whence -p mosh) $1
    }

fi
