#
# setting prompt
#
setopt prompt_subst transientr_prompt

local csi=$'\e[' nl=$'\n'

c0="%{${csi}m%}"		# reset
c1="%{${csi}38;5;33m%}" 	# []$
c2="%{${csi}32m%}"		# %n
ca="%{${csi}38;5;21m%}"		# @
c3="%{${csi}38;5;196m%}"	# %m
c4="%{${csi}38;5;94m%}" 	# %l
c5="%{${csi}38;5;168m%}"	# %!
c6="%{${csi}38;5;196m%}"	# %#
c7="%{${csi}38;5;33;48;5;222m%}" # right

PS1="${c4}(%l) ${c5}%!${c6}%(!.${c6}#.${c1}%%)${c0} "
if [ "${SSH_CONNECTION}" ]; then
    PS1="${c1}[${c2}%n${ca}@${c3}%m${c1}]$PS1"
else
    PS1="${c1}[${c2}%n${c1}]$PS1"
fi
if ! zstyle -t ':zkit:' rprompt; then
    PS1="${c7} %~ ${c0}${nl}$PS1"
fi

shlvl=$SHLVL
if [[ $shlvl > 1 ]]; then
    PS1="$PS1%{${csi}38;5;143m%}[$shlvl]%{${csi}m%} "
fi

PS2="%B%{${csi}38;5;10m%}%_>%{${csi}m%}%b "
if zstyle -t ':zkit:' rprompt; then
    RPROMPT="${c7} %~${c0}"
else
    RPROMPT=
fi
unset csi nl shlvl

function __zkit_icon_title_prefix () {
}

case $TERM in
    xterm*)
	if [[ -n "$SSH_TTY" ]]; then
	    function __zkit_icon_title () {
		printf "\033]0;%s%s@%s(%s):%s\007" \
		    "$(__zkit_icon_title_prefix)" \
		    "${USER}" "${HOST%%.*}" \
		    "${SSH_TTY/#\/dev\/}" "${PWD/#$HOME/~}"
	    }
	else
	    function __zkit_icon_title () {
		local tty=$(tty)
		printf "\033]0;%s%s(%s):%s\007" \
		    "$(__zkit_icon_title_prefix)" \
		    "${USER}" "${TTY/#\/dev\/}" "${PWD/#$HOME/~}"
	    }
	fi
	;;
    *)
	function __zkit_icon_title () { }
	;;
esac

add-zsh-hook precmd __zkit_icon_title
