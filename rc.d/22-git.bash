#!/usr/bin/env bash
#
# git
#

if [[ $PS1 ]]; then
    # git prompt

    if [[ -r $ZKIT/lib/git-prompt.sh ]]; then
	source $ZKIT/lib/git-prompt.sh
	GIT_PS1_SHOWDIRTYSTATE=yes
	GIT_PS1_SHOWSTASHSTATE=yes
	GIT_PS1_SHOWUNTRACKEDFILES=yes
	GIT_PS1_SHOWUPSTREAM=auto
	GIT_PROMPT="%{${csi}48;5;224m%}\$(__git_ps1 \"(%s)\")%{${csi}m%}"
    fi
fi
