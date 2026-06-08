#!/bin/bash

. ${ZKIT}/setup.d/ruby.sh

if [[ ! -d ${HOME}/.rbenv ]]; then
    git clone https://github.com/sstephenson/rbenv.git ~/.rbenv
    export PATH="$HOME/.rbenv/bin:$PATH"
    eval "$(rbenv init -)"
fi

if [[ ! -f ${HOME}/.local/bin/ruby-build ]]; then
    tmpdir=$(mktemp -d /tmp/zkit.XXXXXX )
    (
	cd $tmpdir
	git clone https://github.com/sstephenson/ruby-build.git
	cd ruby-build
	PREFIX=~/.local ./install.sh
    )
    rm -rf $tmpdir
    unset tmpdir
fi

if [[ ! -d ${HOME}/.rbenv/versions/${default_ruby_version} ]]; then
    rbenv install ${default_ruby_version}
fi
