#
# 環境変数の設定
#

# 256color xterm
if [[ $TERM == xterm* ]]; then
    export TERM=xterm-256color
fi

# SSH_ASKPASS
SSH_ASKPASS=/usr/libexec/openssh/gnome-ssh-askpass
export SSH_ASKPASS

case $(uname -s); in
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
	;;
esac

#export EDITOR="emacs -nw -Q --eval '(setq backup-inhibited t)'"
FCEDIT="emacs -nw -Q --eval '(setq backup-inhibited t)'"
