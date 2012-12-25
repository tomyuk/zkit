#!/usr/bin/env bash
#
if [[ -n $PS1 ]]; then
    HISTFILE=${ZKIT}/var/cache/bash_history
    HISTSIZE=10000
    HISTFILESIZE=10000
    HISTCONTROL=ignoredups
fi
