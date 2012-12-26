# -*- shell-script -*-
######################################################################
# ruby rvm

if [[ -r "${HOME}/.rvm/scripts/rvm" ]] ; then

    function __zkit_rvm_prompt () {
	if [[ -n $rvm_bin_path && -x ${rvm_bin_path}/rvm-prompt ]]; then
	    local prompt=$(${rvm_bin_path}/rvm-prompt i v g)
	    echo "$prompt"
	fi
    }

    RVM_PROMPT_COMMAND=__zkit_rvm_prompt

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
fi

# eof
