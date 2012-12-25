if [[ -n $PS1 ]]; then
    if [[ -r /etc/bash_completion ]]; then
	source /etc/bash_completion
    fi

    for i in ${ZKIT}/bash/completion.d/*.sh; do
	if [[ -r "$i" ]]; then
	    . "$i"
	fi
    done
fi
