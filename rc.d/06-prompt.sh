#
# setting prompt
#
setopt prompt_subst transientr_prompt

local lc=$'\e['

c0="%{${lc}m%}"		# reset
c1="%{${lc}38;5;33m%}"  # []$
c2="%{${lc}32m%}"	# %n
c3="%{${lc}38;5;21m%}"	# %m
c4="%{${lc}38;5;94m%}"  # %l
c5="%{${lc}38;5;168m%}" # %!
c6="%{${lc}38;5;196m%}" # %#
c7="%{${lc}38;5;33;48;5;222m%}"	# right

PS1="${c4}(%l) ${c5}%!${c6}%(!.${c6}#.${c1}%%)${c0} "
if [ "${SSH_CONNECTION}" ]; then
    PS1="${c1}[${c2}%n${c3}@%m${c1}]$PS1"
else
    PS1="${c1}[${c2}%n${c1}]$PS1"
fi
# SHLVL の調整
# TODO Mac の場合
if [[ -n "$DISPLAY" ]]; then
    if [[ -n "$GJS_DEBUG_OUTPUT" ]]; then
	shlvl=$(( $SHLVL - 1 ))  # Gnome Desktop から起動した場合
    else
	shlvl=$(( $SHLVL - 2 ))  # その他のランチャーから起動した場合
    fi
else
    shlvl=$SHLVL
fi
if [[ $shlvl > 1 ]]; then
    PS1="$PS1%{${lc}38;5;143m%}[$shlvl] "
fi
unset shlvl

PS2="%B%{${lc}38;5;10m%}%_>%{${lc}m%}%b "
RPROMPT="${c7} %~${c0}"

case $TERM in
    xterm*)
	if [[ -n "$SSH_TTY" ]]; then
	    function __zkit_icon_title () {
		printf "\033]0;%s@%s(%s):%s\007" \
		    "${USER}" "${HOST%%.*}" "${SSH_TTY/#\/dev\/}" "${PWD/#$HOME/~}"
	    }
	else
	    function __zkit_icon_title () {
		local tty=$(tty)
		printf "\033]0;%s(%s):%s\007" \
		    "${USER}" "${TTY/#\/dev\/}" "${PWD/#$HOME/~}"
	    }
	fi
	;;
    *)
	function __zkit_icon_title () { }
	;;
esac
# typeset -ag precmd_functions
# precmd_functions+=__zkit_icon_title
add-zsh-hook precmd __zkit_icon_title
