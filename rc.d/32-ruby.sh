# -*- shell-script -*-
#
# ruby rvm
#

if
    [ -n "${BASH_VERSION:-}" -o -n "${ZSH_VERSION:-}" ] &&
    test "`ps -p $$ -o comm=`" != dash &&
    test "`ps -p $$ -o comm=`" != sh
then
    # rbenv
    if [[ -d ${HOME}/.rbenv ]]; then
	export PATH="${HOME}/.rbenv/bin:${PATH}"
	if [[ -n "${ZSH_VERSION:-}" ]]; then
	    eval "$( rbenv init - zsh )"

	    function gem(){
		$HOME/.rbenv/shims/gem $*
		if [ "$1" = "install" ] || [ "$1" = "i" ] || [ "$1" = "uninstall" ] || [ "$1" = "uni" ]
		then
		    rbenv rehash
		    rehash
		fi
	    }


	else
	    eval "$( rbenv init - )"
	fi
    fi

    # Load RVM if it is installed, try user then root install.
    # if [[ -n $zkit_rvm_private ]]; then
    # 	if [[ -r "$HOME/.rvm/scripts/rvm" ]]; then
    # 	    source "$HOME/.rvm/scripts/rvm"
    # 	fi
	
    # elif [[ -n $rvm_path && -r "$rvm_path/scripts/rvm" ]]; then
    # 	source "$rvm_path/scripts/rvm"
    # else
    # 	unset rvm_path
    # 	if [[ -r "$HOME/.rvm/scripts/rvm" ]]; then
    # 	    source "$HOME/.rvm/scripts/rvm"
    # 	elif [[ -r "/usr/local/rvm/scripts/rvm" ]]; then
    # 	    source "/usr/local/rvm/scripts/rvm"
    # 	fi
    # fi
    # if [[ -n $rvm_path ]]; then
    # 	function __zkit_rvm_prompt () {
    # 	    if [[ -n $rvm_bin_path && -x ${rvm_bin_path}/rvm-prompt ]]; then
    # 		local prompt=$(${rvm_bin_path}/rvm-prompt i v g)
    # 		echo "$prompt"
    # 	    fi
    # 	}
	
    # 	RVM_PROMPT_COMMAND=__zkit_rvm_prompt
    # 	pathmunge $rvm_bin_path

    # 	if [[ -n "$RUBY_VERSION" ]]; then
    # 	    rvm use $RUBY_VERSION >/dev/null
    # 	fi
    # 	if [[ -n $ZSH_VERSION ]]; then
    # 	    fpath=( ${rvm_path}/scripts/zsh/Completion $fpath )
    # 	fi
    # fi
fi

# eof
