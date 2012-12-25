# -*- shell-script -*-
######################################################################
# ruby rvm

function __zkit_rvm_prompt () {
    if [[ -n $rvm_bin_path && -x ${rvm_bin_path}/rvm-prompt ]]; then
	local prompt=$(${rvm_bin_path}/rvm-prompt i v g)
	if [[ -n $prompt ]]; then
	    local csi=$'\e['
	    if [[ -n $ZSH_VERSION ]]; then
		echo "%{${csi}48;5;88;38;5;15m%}$prompt%{${csi}33m%}"
	    else
		echo "${csi}48;5;88;38;5;15m$prompt${csi}33m"
	    fi
	fi
    fi
}

if [[ -r "${HOME}/.rvm/scripts/rvm" ]] ; then
    export rvm_path=${rvm_path=${HOME}/.rvm}
    source "${HOME}/.rvm/scripts/rvm"
    BASH_ENV=$_bash_env
    pathmunge "${HOME}/.rvm/bin"

    if [[ -n "$RUBY_VERSION" ]]; then
    	rvm use >/dev/null
    fi
    if [[ -n $ZSH_VERSION ]]; then
	fpath=( ${HOME}/.rvm/scripts/zsh/Completion $fpath )
    fi
    RVM_PROMPT="\$(__zkit_rvm_prompt)"
fi

# eof
