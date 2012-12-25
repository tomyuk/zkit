#!/usr/bin/env bash
#
#

if [[ -n $PS1 ]]; then

    csi=$'\e[' nl=$'\n'
    c0="\[${csi}m\]"		# reset
    c1="\[${csi}38;5;33m\]" 	# []$
    c2="\[${csi}32m\]"		# %n
    ca="\[${csi}38;5;21m\]"	# @
    c3="\[${csi}38;5;196m\]"	# %m
    c4="\[${csi}38;5;94m\]" 	# %l
    c5="\[${csi}38;5;168m\]"	# %!
    c6="\[${csi}38;5;196m\]"	# %#
    c7="\[${csi}38;5;33;48;5;222m\]" # right
    c8="\[${csi}48;5;0;38;5;15m\]" # time

    PS1="${c8} \D{%R} Bash ${c0}"			# time
    PS1+="${RVM_PROMPT}${GIT_PROMPT}"		# rvm & git
    PS1+="${c7} \w ${c0}${nl}"			# current directory
    PS1+="\[${csi}32m\]\u\[\e[38;5;197m\]@\h\[\e[38;5;99m\] \[\e[31m\]\!"
    if [[ $SHLVL > 1 ]]; then
	PS1+="\[${csi}38;5;143m\][$SHLVL]"
    fi
    PS1+="\[\e[38;5;33m\]\\\$\[\e[0m\] "
    PS2='> '
    PS4='+ '

    case $TERM in
	xterm*)
	    if [[ -x $HOME/.bash-prompt-xterm ]]; then
		PROMPT_COMMAND="$HOME/.bash-prompt-xterm"
	    elif [[ -n "$SSH_TTY" ]]; then
		PROMPT_COMMAND='printf "\033]0;%s@%s(%s):%s\007" "${USER}" "${HOSTNAME%%.*}" "${SSH_TTY/#\/dev\/}" "${PWD/#$HOME/~}"'
	    else
		TTY=$(tty)
		PROMPT_COMMAND='printf "\033]0;%s@%s(%s):%s\007" "${USER}" "${HOSTNAME%%.*}" "${TTY/#\/dev\/}" "${PWD/#$HOME/~}"'
	    fi

	    ;;
	screen)
	    if [[ -x $HOME/.bash-prompt-screen ]]; then
		PROMPT_COMMAND=$HOME/.bash-prompt-screen
	    fi
	    ;;
    esac
    unset csi nl c0 c1 c2 c3 c4 c5 c6 c7 c8
fi
