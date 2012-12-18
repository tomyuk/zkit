######################################################################
# for python

if type -p python >/dev/null; then
    # デフォルトの ~/.local から ~/.private に変更
    PYTHONUSERBASE="${HOME}"/.private
    export PYTHONUSERBASE

    ######################################################################
    # python virtualenv

    # ~/.virtualenvs/postactivate で以下を設定し、
    # ~/.virtualenvs/postdeactivate で削除する
    # VIRTUAL_ENV_NAME - 仮想環境名 (export)
    # VIRTUAL_ENV_WINDOW_TITLE - ターミナルウィンドウ用のタイトルプリフィックス
    # VIRTUAL_ENV_PS1_PREFIX - シェルのプロンプトプリフィックス
    #
    VIRTUAL_ENV_DISABLE_PROMPT=yes

    vw=$(whence -p virtualenvwrapper.sh 2>/dev/null)
    if [[ -n $vw && $EUID -ne 0 ]]; then
        # システムの標準 python を VIRTUALENVWRAPPER_PYTHON に設定する
        if [ -z "$VIRTUALENVWRAPPER_PYTHON" ]; then
            VIRTUALENVWRAPPER_PYTHON=$(whence -p python 2>/dev/null)
        fi
        export VIRTUALENVWRAPPER_PYTHON
        source $vw

        export PROJECT_HOME=/home/tomo/Projects
        if [[ -n "$VIRTUAL_ENV" ]]; then
            workon $(basename $VIRTUAL_ENV)
        fi
    fi
fi
unset vw
