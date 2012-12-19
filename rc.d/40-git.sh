#
# 40-git
#

if [[ -r $ZDOTDIR/lib/git-completion.bash ]]; then
    . $ZDOTDIR/lib/git-completion.bash
fi

local csi=$'\e['

if [[ -r $ZDOTDIR/lib/git-prompt.sh ]]; then

    . $ZDOTDIR/lib/git-prompt.sh
    GIT_PS1_SHOWDIRTYSTATE=yes

    if $USE_RPROMPT; then
	RPROMPT="%{${csi}48;5;224m%}\$(__git_ps1 \"(%s)\")%{${csi}0m%}$RPROMPT"
    else
	PS1="%{${csi}48;5;224m%}\$(__git_ps1 \"(%s)\")%{${csi}m%}$PS1"
    fi
fi
