#
#
#

if [[ -r $ZDOTDIR/lib/git-completion.bash ]]; then
    . $ZDOTDIR/lib/git-completion.bash
fi

local lc=$'\e['

if [[ -r $ZDOTDIR/lib/git-prompt.sh ]]; then
    . $ZDOTDIR/lib/git-prompt.sh
    GIT_PS1_SHOWDIRTYSTATE=yes
    RPROMPT="%{${lc}48;5;224m%}\$(__git_ps1 \"(%s)\")$RPROMPT"
fi
