######################################################################
# for python

python=$(whence python)
if [[ -n "$python" ]]; then
    # デフォルトの ~/.local から ~/.private に変更
    PYTHONUSERBASE="${HOME}"/.private
    export PYTHONUSERBASE

    pver=$(python -c "from sys import version_info as v; print '%d.%d' % (v.major, v.minor)")
    plib=${HOME}/.private/lib/python${pver}
    pbin=${plib}/bin

    if [[ -d $pbin ]]; then
	path=( $pbin $path )
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
unset python pver plib pbin vw
