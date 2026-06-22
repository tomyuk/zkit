# -*- shell-script -*-
#
# nvm for Node.js
#

homebrew_prefix="${HOMEBREW_PREFIX:-}"
home_dir="${HOME:-}"

# nvm設定（Homebrewからインストールした場合）
if [[ -n "$homebrew_prefix" && -d "${homebrew_prefix}/opt/nvm" && -n "$home_dir" ]]; then
    export NVM_DIR="${home_dir}/.nvm"
    source "${homebrew_prefix}/opt/nvm/nvm.sh"
    if [[ -r "${homebrew_prefix}/opt/nvm/etc/bash_completion.d/nvm" ]]; then
        source "${homebrew_prefix}/opt/nvm/etc/bash_completion.d/nvm"
    fi
elif [[ -n "$home_dir" && -d "${home_dir}/.nvm" ]]; then
    export NVM_DIR="${home_dir}/.nvm"
    source "${home_dir}/.nvm/nvm.sh"
    [[ -s "$NVM_DIR/bash_completion" ]] && source "$NVM_DIR/bash_completion"
fi

# n (Node.js version manager)設定
if [[ -n "$homebrew_prefix" && -x "${homebrew_prefix}/bin/n" && -n "$home_dir" ]]; then
    export N_PREFIX="${home_dir}/.n"
    pathmunge "$N_PREFIX/bin"
fi

# yarn設定
if [[ -n "$homebrew_prefix" && -x "${homebrew_prefix}/bin/yarn" && -n "$home_dir" ]]; then
    export YARN_GLOBAL_FOLDER="${home_dir}/.yarn/global"
    pathmunge "$YARN_GLOBAL_FOLDER/node_modules/.bin"
fi

# pnpm設定
if [[ -n "$homebrew_prefix" && -x "${homebrew_prefix}/bin/pnpm" && -n "$home_dir" ]]; then
    export PNPM_HOME="${home_dir}/.local/share/pnpm"
    pathmunge "$PNPM_HOME"
fi

unset homebrew_prefix home_dir
