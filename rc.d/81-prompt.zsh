#!/usr/bin/env zsh
#
# setting prompt
#

if [[ -n $PS1 ]]; then
    setopt prompt_subst transientr_prompt

    function __zkit_shlvl_prompt () {
	if [[ $SHLVL > 1 ]]; then
	    echo "[$SHLVL]"
	fi
    }

    function __zkit_title_command () {
	if [[ $TERM == xterm* ]]; then
	    local TTY P
	    if [[ -n "$SSH_TTY" ]]; then
		TTY="${SSH_TTY/#\/dev\/}"
	    else
		TTY=$(tty)
		TTY="${TTY/#\/dev\/}"
	    fi
	    if [[ -n $VIRTUAL_ENV_NAME ]]; then
		P+="(${VIRTUAL_ENV_NAME}) - "
	    fi
	    P+="${USER}@${HOSTNAME%%.*} (${TTY}) : ${PWD/#$HOME/~}"
	    printf "\033]0;%s\007" "$P"
	fi
    }

    local csi=$'\e[' nl=$'\n'

    local c0="%{${csi}m%}"			# reset
    local c1="%{${csi}38;5;33m%}" 		# []$
    local c2="%{${csi}32m%}"			# %n
    local ca="%{${csi}38;5;21m%}"		# @
    local c3="%{${csi}38;5;196m%}"		# %m
    local c4="%{${csi}38;5;94m%}" 		# %l
    local c5="%{${csi}38;5;168m%}"		# %!
    local c6="%{${csi}38;5;196m%}"		# %#
    local c7="%{${csi}38;5;33;48;5;222m%}"	# right
    local c8="%{${csi}38;5;143m%}"		# shlvl

    PS1="%{${csi}48;5;220;38;5;58m%}Zsh"				# Bash
    PS1+="%{${csi}48;5;250;38;5;255m%} %T "				# time
    PS1+="%{${csi}48;5;219;38;5;242m%}\$($VIRTUALENV_PROMPT_COMMAND)"	# virtualenv
    PS1+="%{${csi}48;5;223;38;5;197m%}\$($RVM_PROMPT_COMMAND)"		# rvm
    PS1+="%{${csi}48;5;224;38;5;8m%}\$($GIT_PROMPT_COMMAND)"		# git
    PS1+="${c7} %~ "							# pwd
    PS1+="${c0}${nl}"

    if zstyle -t ':zkit:' rprompt; then
	RPROMPT=
    else
	RPROMPT=
    fi
    PS1+="${c2}%n${ca}@${c3}%m "				# user@host
    PS1+="${c4}(%l)"						# (tty)
    PS1+="${c8}$(__zkit_shlvl_prompt)"				# shlvl
    PS1+="${c5}%!"						# history
    PS1+="${c6}%(!.${c6}#.${c1}%%)${c0} "			# %

    PS2="%B%{${csi}38;5;10m%}%_>%{${csi}m%}%b "

    add-zsh-hook precmd __zkit_title_command
fi
