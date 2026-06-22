# -*- shell-script -*-
#
# ruby rvm / rbenv
#

# Ruby環境設定（macOS向け）

homebrew_prefix="${HOMEBREW_PREFIX:-}"
home_dir="${HOME:-}"

# rbenv設定（Homebrewからインストールした場合）
if [[ -n "$homebrew_prefix" && -x "${homebrew_prefix}/bin/rbenv" && -n "$home_dir" ]]; then
    export RBENV_ROOT="${home_dir}/.rbenv"
    pathmunge "${RBENV_ROOT}/bin"
    if [[ -n "${ZSH_VERSION:-}" ]]; then
        eval "$(rbenv init - zsh)"
    else
        eval "$(rbenv init -)"
    fi

    # gem関数の定義
    function gem(){
        "${homebrew_prefix}/bin/rbenv" exec gem "$@"
        if [[ "${1:-}" == "install" || "${1:-}" == "i" || "${1:-}" == "uninstall" || "${1:-}" == "uni" ]]; then
            rbenv rehash
            if [[ -n "${ZSH_VERSION:-}" ]]; then
                rehash
            fi
        fi
    }
fi

# rvm設定（従来の設定も維持）
if [[ -n "$home_dir" && -d "${home_dir}/.rvm" && -z "${RBENV_ROOT:-}" ]]; then
    source "${home_dir}/.rvm/scripts/rvm"
fi

# Homebrew Ruby設定
if [[ -n "$homebrew_prefix" && -d "${homebrew_prefix}/opt/ruby" ]]; then
    pathmunge "${homebrew_prefix}/opt/ruby/bin"
    export RUBY_CONFIGURE_OPTS="--with-openssl-dir=${homebrew_prefix}/opt/openssl@1.1"
fi

unset homebrew_prefix home_dir
