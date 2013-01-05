# -*- shell-script -*-
#
# ruby rvm
#

rvm=
if [[ -r "${HOME}/.rvm/scripts/rvm" ]]; then
    rvm="${HOME}/.rvm/scripts/rvm"
elif [[ -r /etc/profile.d/rvm.sh ]]; then
    rvm=/etc/profile.d/rvm.sh
fi
if [[ -n $rvm ]]; then    

    function __zkit_rvm_prompt () {
	if [[ -n $rvm_bin_path && -x ${rvm_bin_path}/rvm-prompt ]]; then
	    local prompt=$(${rvm_bin_path}/rvm-prompt i v g)
	    echo "$prompt"
	fi
    }

    RVM_PROMPT_COMMAND=__zkit_rvm_prompt

    # export rvm_path=${rvm_path=${HOME}/.rvm}
    source $rvm
    BASH_ENV=$_bash_env
    pathmunge "${HOME}/.rvm/bin"

    if [[ -n "$RUBY_VERSION" ]]; then
    	rvm use >/dev/null
    fi
    if [[ -n $ZSH_VERSION ]]; then
	fpath=( ${rvm_path}/scripts/zsh/Completion $fpath )
    fi
fi

# eof
