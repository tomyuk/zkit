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

    csi=$'\e[' nl=$'\n'
    c0="\\[${csi}m\\]"				# reset
    c1="\\[${csi}38;5;33m\\]" 			# []$
    c2="\\[${csi}32m\\]"			# user
    ca="\\[${csi}38;5;21m\\]"			# @
    c3="\\[${csi}38;5;196m\\]"			# machine
    c4="\\[${csi}38;5;94m\\]" 			# tty
    c5="\\[${csi}38;5;168m\\]"			# history
    c7="\\[${csi}38;5;33;48;5;222m\\]"		# pwd
    c8="\\[${csi}38;5;143m\\]"			# shlvl

    PS1="\[${csi}48;5;150;38;5;58m\]Bash"				# Bash
    PS1+="\[${csi}48;5;250;38;5;255m\] \D{%R} "				# time
    PS1+="\[${csi}48;5;219;38;5;242m\]\$($VIRTUALENV_PROMPT_COMMAND)"	# virtualenv
    PS1+="\[${csi}48;5;223;38;5;197m\]\$($RVM_PROMPT_COMMAND)"		# rvm
    PS1+="\[${csi}48;5;224;38;5;8m\]\$($GIT_PROMPT_COMMAND)"		# git
    PS1+="${c7} \w "							# pwd
    PS1+="${c0}${nl}"

    tty=$(tty)

    PS1+="${c2}\u${ca}@${c3}\h "				# user@host
    PS1+="${c4}(${tty/#\/dev\/})"				# (tty)
    PS1+="${c8}$(__zkit_shlvl_prompt)"				# shlvl
    PS1+="\[${csi}31m\]\!"					# history
    PS1+="${c1}\$${c0} "
    unset tty

    PS2='> '
    PS4='+ '
    unset csi nl c0 c1 c2 c3 c4 c5 c6 c7
fi
