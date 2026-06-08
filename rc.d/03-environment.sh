#
# 環境変数の設定
#

# 256color xterm
if [[ $TERM == xterm* ]]; then
    export TERM=xterm-256color
fi

# SSH_ASKPASS for macOS
if [[ -x /usr/libexec/ssh-askpass ]]; then
    export SSH_ASKPASS=/usr/libexec/ssh-askpass
fi



# Homebrew環境変数
if [[ -n $HOMEBREW_PREFIX ]]; then
    export HOMEBREW_NO_AUTO_UPDATE=1
    export HOMEBREW_NO_ANALYTICS=1
    export HOMEBREW_CASK_OPTS="--appdir=/Applications"
fi

# エディタ設定（Homebrewのemacsを優先）
if [[ -x ${HOMEBREW_PREFIX}/bin/emacs ]]; then
    export VISUAL=${HOMEBREW_PREFIX}/bin/emacs
elif [[ -x /Applications/Emacs.app/Contents/MacOS/Emacs ]]; then
    export VISUAL=/Applications/Emacs.app/Contents/MacOS/Emacs
else
    export VISUAL=${ZKIT}/bin/zkit_emacs
fi
export EDITOR=$VISUAL

# macOS固有の設定
export BROWSER=open
export PAGER=less
export LESS='-R'

# 日本語環境
export LANG=ja_JP.UTF-8
export LC_ALL=ja_JP.UTF-8

case $(uname -s) in
    Linux)
	if type -p dircolors >/dev/null; then
	    eval $(dircolors --sh)
	fi
	;;
    Darwin)
        # a     black
        # b     red
        # c     green
        # d     brown
        # e     blue
        # f     magenta
        # g     cyan
        # h     light grey
        # A     bold black, usually shows up as dark grey
        # B     bold red
        # C     bold green
        # D     bold brown, usually shows up as yellow
        # E     bold blue
        # F     bold magenta
        # G     bold cyan
        # H     bold light grey; looks like bright white
        # x     default foreground or background
	#
        # 1.   directory
        # 2.   symbolic link
        # 3.   socket
        # 4.   pipe
        # 5.   executable
        # 6.   block special
        # 7.   character special
        # 8.   executable with setuid bit set
        # 9.   executable with setgid bit set
        # 10.  directory writable to others, with sticky bit
        # 11.  directory writable to others, without sticky bit
	export LSCOLORS="exfxcxdxbxegedabagacad"
	export CLICOLOR=1
	;;
esac

export VISUAL=${ZKIT}/bin/zkit_emacs
export EDITOR=$VISUAL
