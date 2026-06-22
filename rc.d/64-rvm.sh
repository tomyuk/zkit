# -*- shell-script -*-
#
# ruby rvm
#

if [[ -n "${BASH_VERSION:-}" || -n "${ZSH_VERSION:-}" ]] && \
    [[ "$(ps -p $$ -o comm=)" != dash ]] && \
    [[ "$(ps -p $$ -o comm=)" != sh ]]
then
    home_dir="${HOME:-}"

    # Load RVM if it is installed, try user then root install.
    if [[ -n "${zkit_rvm_private:-}" ]]; then
    	if [[ -n "$home_dir" && -r "${home_dir}/.rvm/scripts/rvm" ]]; then
    	    source "${home_dir}/.rvm/scripts/rvm"
    	fi

    elif [[ -n "${rvm_path:-}" && -r "${rvm_path}/scripts/rvm" ]]; then
    	source "${rvm_path}/scripts/rvm"
    else
    	unset rvm_path
    	if [[ -n "$home_dir" && -r "${home_dir}/.rvm/scripts/rvm" ]]; then
    	    source "${home_dir}/.rvm/scripts/rvm"
    	elif [[ -r /usr/local/rvm/scripts/rvm ]]; then
    	    source /usr/local/rvm/scripts/rvm
    	fi
    fi
    if [[ -n "${rvm_path:-}" ]]; then
    	function __zkit_rvm_prompt () {
    	    if [[ -n "${rvm_bin_path:-}" && -x "${rvm_bin_path}/rvm-prompt" ]]; then
    		local prompt
    		prompt="$(${rvm_bin_path}/rvm-prompt i v g)"
    		echo "$prompt"
    	    fi
    	}

    	RVM_PROMPT_COMMAND=__zkit_rvm_prompt
	if [[ -n "${rvm_bin_path:-}" ]]; then
	    pathmunge "$rvm_bin_path"
	fi
	#RVM_BIN_PATH=$rvm_bin_path

    	if [[ -n "${RUBY_VERSION:-}" ]]; then
	    #set _save_path=$PATH
	    pathmunge "${rvm_path}/gems/${RUBY_VERSION}/bin"
	    _save_path="${PATH:-}"
    	    rvm use "$RUBY_VERSION" >/dev/null
	    PATH="$_save_path"
	    unset _save_path
	else
    	    rvm use default >/dev/null
    	fi
    	if [[ -n "${ZSH_VERSION:-}" ]]; then
    	    fpath=( "${rvm_path}/scripts/zsh/Completion" ${fpath} )
    	fi
    fi

    unset home_dir
fi

# eof
