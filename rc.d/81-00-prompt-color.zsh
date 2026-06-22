#!/usr/bin/env bash
#
#

if [[ -n ${PS1:-} ]]; then
    csi=$'\e[' nl=$'\n'

    function __zkit_shlvl_prompt () {
	if (( ${SHLVL:-0} > 1 )); then
	    echo "[$SHLVL]"
	fi
    }

    function __zkit_title_command () {
	if [[ ${TERM:-} == xterm* ]]; then
	    local TTY P="" venv_name cwd home host
	    TTY=$(tty)
	    TTY="${TTY/#\/dev\/}"

	    venv_name="${VIRTUAL_ENV_NAME:-}"
	    if [[ -z "$venv_name" && -n "${VIRTUAL_ENV:-}" ]]; then
		venv_name="${VIRTUAL_ENV##*/}"
	    fi
	    if [[ -n "$venv_name" ]]; then
		P+="(${venv_name}) - "
	    fi

	    cwd="${PWD:-}"
	    home="${HOME:-}"
	    if [[ -n "$home" ]]; then
		cwd="${cwd/#$home/~}"
	    fi
	    host="${HOSTNAME:-}"
	    host="${host%%.*}"
	    P+="${USER:-}@${host} (${TTY}) : ${cwd}"
	    printf "\033]0;%s\007" "$P"
	fi
    }
    PROMPT_COMMAND="__zkit_title_command"
    PROMPT_DIRTRIM=0

    PS1="${pc1}Bash"				# Bash
    PS1+="${pc2} \D{%R} "			# time
    if [[ -n "${VIRTUALENV_PROMPT_COMMAND:-}" ]]; then
	PS1+="${pc3}\$(${VIRTUALENV_PROMPT_COMMAND})"	# virtualenv
    fi
    if [[ -n "${RVM_PROMPT_COMMAND:-}" ]]; then
	PS1+="${pc4}\$(${RVM_PROMPT_COMMAND})"	# rvm
    fi
    if [[ -n "${GIT_PROMPT_COMMAND:-}" ]]; then
	PS1+="${pc5}\$(${GIT_PROMPT_COMMAND})"	# git
    fi
    PS1+="${pc6} \w "				# pwd
    PS1+="${pc0}${nl}"

    tty=$(tty)

    PS1+="${cc1}\u${cc2}@${cc3}\h "				# user@host
    if [[ ! -n "${ZKIT_PROMPT_SIMPLE:-}" ]]; then
	PS1+="${cc4}(${tty/#\/dev\/})"				# (tty)
	PS1+="${cc5}$(__zkit_shlvl_prompt)"			# shlvl
	PS1+="${cc6}\!"						# history
    fi
    PS1+="${cc7}\\\$${pc0} "					# %
    unset tty

    PS2='> '
    PS4='+ '
    unset csi nl c0 c1 c2 c3 c4 c5 c6 c7
fi
