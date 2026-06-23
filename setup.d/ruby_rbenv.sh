#!/bin/bash

. "${ZKIT:-${HOME:-}/.zkit}/setup.d/ruby.sh"

home_dir="${HOME:-}"

if [[ -n "$home_dir" && ! -d "${home_dir}/.rbenv" ]]; then
    git clone https://github.com/sstephenson/rbenv.git "${home_dir}/.rbenv"
    export PATH="${home_dir}/.rbenv/bin:${PATH:-}"
    eval "$(rbenv init -)"
fi

if [[ -n "$home_dir" && ! -f "${home_dir}/.local/bin/ruby-build" ]]; then
    tmpdir=$(mktemp -d /tmp/zkit.XXXXXX )
    (
	cd "$tmpdir" || exit 1
	git clone https://github.com/sstephenson/ruby-build.git
	cd ruby-build || exit 1
	PREFIX="${home_dir}/.local" ./install.sh
    )
    rm -rf "$tmpdir"
    unset tmpdir
fi

if [[ -n "$home_dir" && -n "${default_ruby_version:-}" && ! -d "${home_dir}/.rbenv/versions/${default_ruby_version}" ]]; then
    rbenv install "${default_ruby_version}"
fi

unset home_dir
