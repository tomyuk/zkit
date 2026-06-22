# -*- shell-script -*-
######################################################################
# for python

# macOS Python環境設定

homebrew_prefix="${HOMEBREW_PREFIX:-}"
home_dir="${HOME:-}"
python=""
python_version=""
python_bin=""
site_packages=""

# HomebrewのPythonを優先
if [[ -n "$homebrew_prefix" && -x "${homebrew_prefix}/bin/python3" ]]; then
    python="${homebrew_prefix}/bin/python3"
elif command -v python3 >/dev/null 2>&1; then
    python="$(command -v python3)"
else
    python="$(__zkit_whence python 2>/dev/null || true)"
fi

if [[ -n "$python" ]]; then
    python_version="$($python -c "import sys; print(f'{sys.version_info.major}.{sys.version_info.minor}')")"

    # macOS固有のpython bins path
    if [[ $(uname) == "Darwin" && -n "$home_dir" ]]; then
        python_bin="${home_dir}/Library/Python/${python_version}/bin"
        site_packages="${home_dir}/Library/Python/${python_version}/lib/python/site-packages"
    elif [[ -n "$home_dir" ]]; then
        python_bin="${home_dir}/.local/lib/python${python_version}/bin"
        site_packages="${home_dir}/.local/lib/python${python_version}/site-packages"
    fi

    if [[ -n "$python_bin" ]]; then
        pathmunge "$python_bin"
    fi

    # pipenv/poetry環境設定
    if [[ -n "$homebrew_prefix" && -x "${homebrew_prefix}/bin/pipenv" ]]; then
        export PIPENV_VENV_IN_PROJECT=1
    fi

    if [[ -n "$homebrew_prefix" && -x "${homebrew_prefix}/bin/poetry" ]]; then
        export POETRY_VENV_IN_PROJECT=true
    fi

    # pyenv設定（Homebrewからインストールした場合）
    if [[ -n "$homebrew_prefix" && -x "${homebrew_prefix}/bin/pyenv" && -n "$home_dir" ]]; then
        export PYENV_ROOT="${home_dir}/.pyenv"
        pathmunge "${PYENV_ROOT}/bin"
        eval "$(pyenv init -)"
    fi
fi

unset homebrew_prefix home_dir python python_version python_bin site_packages
