# -*-shell-script-*-

case `uname` in
    Linux)
	alias which='alias | /usr/bin/which --tty-only --read-alias --show-dot --show-tilde'
	alias where='alias | /usr/bin/which --tty-only --read-alias --show-dot --show-tilde --all'
	lscolor="--color=auto"
	;;
    Darwin)
	alias where=whereis
	lscolor="-G"
	;;
esac

alias l.="ls -d ${lscolor} .*"
alias ll="ls -l ${lscolor}"
alias ls="ls -CF ${lscolor}"
alias sl="ls -CF"
alias la="ls -aF ${lscolor}"
alias lla="ls -alF ${lscolor}"
alias lz="ls -aZF ${lscolor}"
alias top='nice -10 top'

alias -g DN=/dev/null

alias -g G='| egrep'
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

alias -g EG='|& egrep'
alias -g EH='|& head'
alias -g EL='|& less'
alias -g ELS='|& less -S'
alias -g ETL='|& tail -20'
alias -g ET='|& tail'

alias svnaddall='svn status | awk "/^\?/ {print \$(NF)}" | xargs svn add'
alias svncommit='svn commit -m ""'
alias svnlost='svn status | awk "/^\!/ {print \$(NF)}"'
alias svn_ps_kw='svn ps -R svn:keywords "Id Head URL" .'

alias rmbackup='rm -f $(find . -name "*~")'
alias rmpyc='rm -f $(find . -name "*.pyc")'
alias cleanup='rm -f $( find . \( -name "*.pyc" -o -name "*~" \) )'

alias sudologin='sudo -i'

if [[ -x /usr/bin/colordiff ]]; then
    alias diff='/usr/bin/colordiff $*'
fi

if [[ -x '/opt/google/chrome/google-chrome' ]]; then
    alias chrome='/opt/google/chrome/google-chrome'
    alias chrome-allow-file-access='/opt/google/chrome/google-chrome --allow-file-access-from-files'
fi

if [[ -x /Applications/Emacs.app/Contents/MacOS/Emacs ]]; then
    alias emacs=/Applications/Emacs.app/Contents/MacOS/Emacs
fi

# function emacs () {
#     if [[ -n "$DISPLAY" ]]; then
# 	( /usr/bin/emacs $@ 2>/dev/null & )
#     else
# 	/usr/bin/emacs $@
#     fi
# }

# for alias (zsh)
autoload -Uz zmv          # 一括リネーム等に便利です。
alias zmv="noglob zmv -W" # zmv を緩く指定できるようにします。 $ zmv *.txt file-*.txt
