# -*- shell-script -*-
#
# ruby rvm
#

# if [ -n "${BASH_VERSION:-}" -o -n "${ZSH_VERSION:-}" ] &&
#     test "`ps -p $$ -o comm=`" != dash &&
#     test "`ps -p $$ -o comm=`" != sh
# then
#     # rbenv
#     if [[ -d ${HOME}/.rbenv ]]; then
# 	export PATH="${HOME}/.rbenv/bin:${PATH}"
# 	if [[ -n "${ZSH_VERSION:-}" ]]; then
# 	    eval "$( rbenv init - zsh )"

# 	    function gem(){
# 		$HOME/.rbenv/shims/gem $*
# 		if [ "$1" = "install" ] || [ "$1" = "i" ] || [ "$1" = "uninstall" ] || [ "$1" = "uni" ]
# 		then
# 		    rbenv rehash
# 		    rehash
# 		fi
# 	    }


# 	else
# 	    eval "$( rbenv init - )"
# 	fi
#     fi
# fi

# Ruby環境設定（macOS向け）

# rbenv設定（Homebrewからインストールした場合）
if [[ -x ${HOMEBREW_PREFIX}/bin/rbenv ]]; then
    export RBENV_ROOT="$HOME/.rbenv"
    pathmunge "${RBENV_ROOT}/bin"
    eval "$(rbenv init - zsh)"
    
    # gem関数の定義
    function gem(){
        ${HOMEBREW_PREFIX}/bin/rbenv exec gem $*
        if [[ "$1" == "install" || "$1" == "i" || "$1" == "uninstall" || "$1" == "uni" ]]; then
            rbenv rehash
            rehash
        fi
    }
fi

# rvm設定（従来の設定も維持）
if [[ -d ${HOME}/.rvm ]] && [[ -z $RBENV_ROOT ]]; then
    source ${HOME}/.rvm/scripts/rvm
fi

# Homebrew Ruby設定
if [[ -d ${HOMEBREW_PREFIX}/opt/ruby ]]; then
    pathmunge "${HOMEBREW_PREFIX}/opt/ruby/bin"
    export RUBY_CONFIGURE_OPTS="--with-openssl-dir=${HOMEBREW_PREFIX}/opt/openssl@1.1"
fi

