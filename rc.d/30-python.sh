# -*- shell-script -*-
######################################################################
# for python

# python=$(__zkit_whence python)
# if [[ -n "$python" ]]; then
#     python_version=$(python -c "from sys import version_info as v; print('%d.%d' % (v[0], v[1]))")
#     if [[ $(uname) == "Darwin" ]]; then
# 	python_bin=${HOME}/Library/Python/${python_version}/bin
#     else
# 	python_bin=${HOME}/.local/lib/python${python_version}/bin
#     fi

#     pathmunge $python_bin

#     ######################################################################
#     # python virtualenv
#     # ~/.virtualenvs/postactivate で以下を設定し、
#     # ~/.virtualenvs/postdeactivate で削除する
#     # VIRTUAL_ENV_NAME - 仮想環境名 (export)
#     # VIRTUAL_ENV_WINDOW_TITLE - ターミナルウィンドウ用のタイトルプリフィックス
#     # VIRTUAL_ENV_PS1_PREFIX - シェルのプロンプトプリフィックス
#     #
#     VIRTUAL_ENV_DISABLE_PROMPT=yes

#     if [[ -r ${python_bin}/virtualenvwrapper.sh ]]; then
#         # システムの標準 python を VIRTUALENVWRAPPER_PYTHON に設定する
#         if [ -z "$VIRTUALENVWRAPPER_PYTHON" ]; then
#             VIRTUALENVWRAPPER_PYTHON=${python}
#         fi
#         export VIRTUALENVWRAPPER_PYTHON
#         source ${python_bin}/virtualenvwrapper.sh

#         export PROJECT_HOME=${HOME}/Projects
#         if [[ -n "$VIRTUAL_ENV" ]]; then
#             workon $(basename $VIRTUAL_ENV)
#         fi
#     fi

#     function __zkit_virtualenv_prompt () {
# 	if [[ -n $VIRTUAL_ENV_NAME ]]; then
# 	    echo "[${VIRTUAL_ENV_NAME}]"
# 	fi
#     }
#     VIRTUALENV_PROMPT_COMMAND=__zkit_virtualenv_prompt

# fi
# unset python python_virsion python_bin

# macOS Python環境設定

# HomebrewのPythonを優先
if [[ -x ${HOMEBREW_PREFIX}/bin/python3 ]]; then
    python=${HOMEBREW_PREFIX}/bin/python3
elif python3 --version >/dev/null 2>&1; then
    python=$(which python3)
else
    python=$(__zkit_whence python)
fi

if [[ -n "$python" ]]; then
    python_version=$($python -c "import sys; print(f'{sys.version_info.major}.{sys.version_info.minor}')")
    
    # macOS固有のpython bins path
    if [[ $(uname) == "Darwin" ]]; then
        python_bin=${HOME}/Library/Python/${python_version}/bin
        site_packages=${HOME}/Library/Python/${python_version}/lib/python/site-packages
    else
        python_bin=${HOME}/.local/lib/python${python_version}/bin
        site_packages=${HOME}/.local/lib/python${python_version}/site-packages
    fi

    pathmunge $python_bin

    # pipenv/poetry環境設定
    if [[ -x ${HOMEBREW_PREFIX}/bin/pipenv ]]; then
        export PIPENV_VENV_IN_PROJECT=1
    fi
    
    if [[ -x ${HOMEBREW_PREFIX}/bin/poetry ]]; then
        export POETRY_VENV_IN_PROJECT=true
    fi

    # pyenv設定（Homebrewからインストールした場合）
    if [[ -x ${HOMEBREW_PREFIX}/bin/pyenv ]]; then
        export PYENV_ROOT="$HOME/.pyenv"
        pathmunge "${PYENV_ROOT}/bin"
        eval "$(pyenv init -)"
    fi
fi

unset python python_version python_bin site_packages
