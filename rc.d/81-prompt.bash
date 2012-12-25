#!/usr/bin/env bash
#
#
echo "BASH PROMPT"
if [[ -n $PS1 ]]; then

    csi=$'\e[' nl=$'\n'

    # 端末のタイトルを設定するコマンドの指定 /etc/bashrc をオーバーライド
    PS1="\[${csi}32m\]\u\[\e[38;5;197m\]@\h:\[\e[38;5;99m\]\w \[\e[31m\]\!"
    if [[ $SHLVL > 1 ]]; then
	PS1="$PS1\[\e[38;5;143m\][$SHLVL]"
    fi
    PS1="$PS1\[\e[38;5;33m\]\\\$\[\e[0m\] "
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
    unset csi nl
fi
