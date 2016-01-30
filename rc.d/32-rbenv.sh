# -*- shell-script -*-
#
# ruby rvm
#

if [ -n "${BASH_VERSION:-}" -o -n "${ZSH_VERSION:-}" ] &&
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
fi
