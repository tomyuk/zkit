# common aliases

if [[ -n $PS1 ]]; then
    case `uname` in
	Linux)
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
    unset lscolor

    alias svnaddall='svn status | awk "/^\?/ {print \$(NF)}" | xargs svn add'
    alias svncommit='svn commit -m ""'
    alias svnlost='svn status | awk "/^\!/ {print \$(NF)}"'
    alias svn_ps_kw='svn ps -R svn:keywords "Id Head URL" .'

    alias rmbackup='rm -f `find . -name "*~"`'
    alias rmpyc='rm -f `find . -name "*.pyc"`'
    alias cleanup='rm -f $( find . \( -name "*.pyc" -o -name "*~" -o -name ".#*" -o -name "#*" \) )'

    alias suz='sudo zsh'
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
fi
