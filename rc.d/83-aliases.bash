#!/usr/bin/env bash
# Alias

if [[ -n $PS1 ]]; then
    case `uname` in
	Linux)
	    alias which='alias | /usr/bin/which --tty-only --read-alias --show-dot --show-tilde'
	    alias where='alias | /usr/bin/which --tty-only --read-alias --show-dot --show-tilde --all'
	    ;;
    esac
fi
