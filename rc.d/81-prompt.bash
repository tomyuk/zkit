#!/usr/bin/env bash
#
#

if [[ -n $PS1 ]]; then

    function __zkit_shlvl_prompt () {
	if [[ $SHLVL > 1 ]]; then
	    echo "[$SHLVL]"
	fi
    }

    function __zkit_title_command () {
	if [[ $TERM == xterm* ]]; then
	    local TTY P
	    TTY=$(tty)
	    TTY="${TTY/#\/dev\/}"
	    if [[ -n $VIRTUAL_ENV_NAME ]]; then
		P+="(${VIRTUAL_ENV_NAME}) - "
	    fi
	    P+="${USER}@${HOSTNAME%%.*} (${TTY}) : ${PWD/#$HOME/~}"
	    printf "\033]0;%s\007" "$P"
	fi
    }
    PROMPT_COMMAND="__zkit_title_command"
    PROMPT_DIRTRIM=0

    PS1="${pc1}Bash"				# Bash
    PS1+="${pc2} \D{%R} "			# time
    PS1+="${pc3}$($VIRTUALENV_PROMPT_COMMAND)"	# virtualenv
    PS1+="${pc4}\$($RVM_PROMPT_COMMAND)"	# rvm
    PS1+="${pc5}\$($GIT_PROMPT_COMMAND)"	# git
    PS1+="${pc6} \w "				# pwd
    PS1+="${pc0}${nl}"

    tty=$(tty)

    PS1+="${cc1}\u${cc2}@${cc3}\h "				# user@host
    PS1+="${cc4}(${tty/#\/dev\/})"				# (tty)
    PS1+="${cc5}$(__zkit_shlvl_prompt)"				# shlvl
    PS1+="${cc6}\!"						# history
    PS1+="${cc7}\\\$${pc0} "					# %
    unset tty

    PS2='> '
    PS4='+ '
    unset csi nl c0 c1 c2 c3 c4 c5 c6 c7
fi
