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
	    if [[ -f /etc/description ]]; then
		P+="[ $(cat /etc/description) ] - "
	    fi
	    if [[ -n $VIRTUAL_ENV_NAME ]]; then
		P+="(${VIRTUAL_ENV_NAME}) - "
	    fi
	    P+="${USER}@${HOST%%.*} (${TTY}) : ${PWD/#$HOME/~}"
	    printf "\033]0;%s\007" "$P"
	fi
    }

    if [[ -f /etc/description ]]; then
	DESCRIPTION=$(cat /etc/description)
    else
	DESCRIPTION=" Zsh "
    fi

    PS1="${pc1} ${DESCRIPTION} "		# Description
    PS1+="${pc2} %T "				# time
    PS1+="${pc3}\$($VIRTUALENV_PROMPT_COMMAND)"	# virtualenv
#    PS1+="${pc4}\$($RVM_PROMPT_COMMAND)"	# rvm
    PS1+="${pc5}\$($GIT_PROMPT_COMMAND)"	# git
    PS1+="${pc6} %~ "				# pwd
    PS1+="${pc0}${nl}"

    if zstyle -t ':zkit:' rprompt; then
	RPROMPT=
    else
	RPROMPT=
    fi
    PS1+="${cc1}%n${cc2}@${cc3}%m "		# user@host
    PS1+="${cc4}(%l)"				# (tty)
    PS1+="${cc5}$(__zkit_shlvl_prompt)"		# shlvl
    PS1+="${cc6}%!"				# history
    PS1+="%(!.${cc8}#.${cc7}%%)${pc0} "		# #/%

    PS2="%B%{${csi}38;5;10m%}%_>%{${csi}m%}%b "

    add-zsh-hook precmd __zkit_title_command
fi
