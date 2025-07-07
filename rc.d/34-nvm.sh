# -*- shell-script -*-
#
# nvm for Node.js
#

# # nvm
# if [[ -d ${HOME}/.nvm ]]; then
#     source ${HOME}/.nvm/nvm.sh
#     hash -r
#     eval "$(npm completion)"
# fi

# # eof

# nvm設定（Homebrewからインストールした場合）
if [[ -d ${HOMEBREW_PREFIX}/opt/nvm ]]; then
    export NVM_DIR="$HOME/.nvm"
    source ${HOMEBREW_PREFIX}/opt/nvm/nvm.sh
    source ${HOMEBREW_PREFIX}/opt/nvm/etc/bash_completion.d/nvm
elif [[ -d ${HOME}/.nvm ]]; then
    export NVM_DIR="$HOME/.nvm"
    source ${HOME}/.nvm/nvm.sh
    [[ -s "$NVM_DIR/bash_completion" ]] && source "$NVM_DIR/bash_completion"
fi

# n (Node.js version manager)設定
if [[ -x ${HOMEBREW_PREFIX}/bin/n ]]; then
    export N_PREFIX="$HOME/.n"
    pathmunge "$N_PREFIX/bin"
fi

# yarn設定
if [[ -x ${HOMEBREW_PREFIX}/bin/yarn ]]; then
    export YARN_GLOBAL_FOLDER="$HOME/.yarn/global"
    pathmunge "$YARN_GLOBAL_FOLDER/node_modules/.bin"
fi

# pnpm設定
if [[ -x ${HOMEBREW_PREFIX}/bin/pnpm ]]; then
    export PNPM_HOME="$HOME/.local/share/pnpm"
    pathmunge "$PNPM_HOME"
fi
