# -*- shell-script -*-

if [ -x ${HOME}/miniforge3/bin/conda ]; then
    __conda_setup="$(${HOME}/miniforge3/bin/conda 'shell.bash' 'hook' 2> /dev/null)"
    if [ $? -eq 0 ]; then
	eval "$__conda_setup"
    else
	if [ -f "${HOME}/miniforge3/etc/profile.d/conda.sh" ]; then
            . "${HOME}/miniforge3/etc/profile.d/conda.sh"
	else
            export PATH="${HOME}/miniforge3/bin:$PATH"
	fi
    fi
    unset __conda_setup

elif [ -x /opt/anaconda3/bin/conda ]; then
    __conda_setup="$('/opt/anaconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
    if [ $? -eq 0 ]; then
	eval "$__conda_setup"
    else
	if [ -f "/opt/anaconda3/etc/profile.d/conda.sh" ]; then
            . "/opt/anaconda3/etc/profile.d/conda.sh"
	else
            export PATH="/opt/anaconda3/bin:$PATH"
	fi
    fi
    unset __conda_setup
fi

