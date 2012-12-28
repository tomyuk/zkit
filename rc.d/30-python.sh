#!/usr/bin/env zsh
######################################################################
# for python

python=$(__zkit_whence python)
if [[ -n "$python" ]]; then
    # デフォルトの ~/.local から ${ZKIT} に変更
    # PYTHONUSERBASE=${ZKIT}
    # export PYTHONUSERBASE
    _pver=$(python -c "from sys import version_info as v; print '%d.%d' % (v[0], v[1])")

    #_pbin=${ZKIT}/lib/python${_pver}/bin
    _pbin=${HOME}/.local/bin

    if [[ -d $_pbin ]]; then
	pathmunge $_pbin
    fi

    ######################################################################
    # python virtualenv
    # ~/.virtualenvs/postactivate で以下を設定し、
    # ~/.virtualenvs/postdeactivate で削除する
    # VIRTUAL_ENV_NAME - 仮想環境名 (export)
    # VIRTUAL_ENV_WINDOW_TITLE - ターミナルウィンドウ用のタイトルプリフィックス
    # VIRTUAL_ENV_PS1_PREFIX - シェルのプロンプトプリフィックス
    #
    VIRTUAL_ENV_DISABLE_PROMPT=yes

    _vw=$(__zkit_whence virtualenvwrapper.sh)
    if [[ -n ${_vw} ]]; then
        # システムの標準 python を VIRTUALENVWRAPPER_PYTHON に設定する
        if [ -z "$VIRTUALENVWRAPPER_PYTHON" ]; then
            VIRTUALENVWRAPPER_PYTHON=${python}
        fi
        export VIRTUALENVWRAPPER_PYTHON
        source ${_vw}

        export PROJECT_HOME=${HOME}/Projects
        if [[ -n "$VIRTUAL_ENV" ]]; then
            workon $(basename $VIRTUAL_ENV)
        fi
    fi

    function __zkit_virtualenv_prompt () {
	if [[ -n $VIRTUAL_ENV_NAME ]]; then
	    echo "[${VIRTUAL_ENV_NAME}]"
	fi
    }
    VIRTUALENV_PROMPT_COMMAND=__zkit_virtualenv_prompt

fi
unset python _pver _pbin _vw
