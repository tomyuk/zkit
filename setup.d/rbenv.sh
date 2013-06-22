#!/bin/bash

if [[ ! -d ${HOME}/.rbenv ]]; then
    git clone https://github.com/sstephenson/rbenv.git ~/.rbenv
    export PATH="$HOME/.rbenv/bin:$PATH"
    eval "$(rbenv init -)"
    rbenv install 1.9.3-p429
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
fi
