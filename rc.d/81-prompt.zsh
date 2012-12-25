#!/usr/bin/env zsh
#
# setting prompt
#
echo "ZSH PROMPT [$PS1]"
if [[ -n $PS1 ]]; then
    setopt prompt_subst transientr_prompt

    local csi=$'\e[' nl=$'\n'

    c0="%{${csi}m%}"		# reset
    c1="%{${csi}38;5;33m%}" 	# []$
    c2="%{${csi}32m%}"		# %n
    ca="%{${csi}38;5;21m%}"	# @
    c3="%{${csi}38;5;196m%}"	# %m
    c4="%{${csi}38;5;94m%}" 	# %l
    c5="%{${csi}38;5;168m%}"	# %!
    c6="%{${csi}38;5;196m%}"	# %#
    c7="%{${csi}38;5;33;48;5;222m%}" # right
    c8="%{${csi}48;5;0;38;5;15m%B%}" # time

    PS1="${c8} %T ${c0}"                                   # time
    if zstyle -t ':zkit:' rprompt; then
	RPROMPT=""
	RPROMPT+="${c7} %~${c0}"                            # current directory
    else
	echo XX "${RVM_PROMPT}${GIT_PROMPT}"
	PS1+="${RVM_PROMPT}${GIT_PROMPT}"
	PS1+="${c7} %~ ${c0}${nl}"
	RPROMPT=
    fi
    PS1+="${c1}[${c2}%n${ca}@${c3}%m${c1}]"                # user@host
    PS1+="${c4}(%l) ${c5}%!${c6}%(!.${c6}#.${c1}%%)${c0} " # (tty) hist%
    if [[ $SHLVL > 1 ]]; then
	PS1="$PS1%{${csi}38;5;143m%}[$SHLVL]%{${csi}m%} " # SHLVL
    fi

    PS2="%B%{${csi}38;5;10m%}%_>%{${csi}m%}%b "

    function __zkit_icon_title_prefix () {
    }

    case $TERM in
	xterm*)
	    function __zkit_icon_title () {
		printf "\033]0;%s%s@%s(%s):%s\007" \
		    "$(__zkit_icon_title_prefix)" \
		    "${USER}" "${HOST%%.*}" \
		    "${SSH_TTY/#\/dev\/}" "${PWD/#$HOME/~}"
	    }
	    ;;
	*)
	    function __zkit_icon_title () { }
	    ;;
    esac

    add-zsh-hook precmd __zkit_icon_title
fi
