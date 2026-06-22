# determine the data directory according to the XDG Base Directory Specification
if [[ -n "${XDG_DATA_HOME:-}" ]] && [[ "${XDG_DATA_HOME}" == *"${USER:-}"* ]]; then
    export AUTOJUMP_DATA_DIR="${XDG_DATA_HOME}/autojump"
else
    export AUTOJUMP_DATA_DIR="${HOME:-}/.local/share/autojump"
fi

if [[ ! -e "${AUTOJUMP_DATA_DIR}" ]]; then
    mkdir -p "${AUTOJUMP_DATA_DIR}"
    if [[ -n "${HOME:-}" ]]; then
        mv "${HOME}/.autojump_py" "${AUTOJUMP_DATA_DIR}/autojump_py" 2>>/dev/null #migration
        mv "${HOME}/.autojump_py.bak" "${AUTOJUMP_DATA_DIR}/autojump_py.bak" 2>>/dev/null
        mv "${HOME}/.autojump_errors" "${AUTOJUMP_DATA_DIR}/autojump_errors" 2>>/dev/null
    fi
fi

# set paths if necessary for local installations
if [[ -n "${HOME:-}" && -d "${HOME}/.autojump" ]]; then
    path=("${HOME}/.autojump/bin" ${path})
    fpath=("${HOME}/.autojump/functions/" ${fpath})
fi

# set fpath if necessary for homebrew installation
if command -v brew &>/dev/null; then
    brew_prefix="$(brew --prefix)"
    if [[ -d "${brew_prefix}/share/zsh/site-functions" ]]; then
        fpath=("${brew_prefix}/share/zsh/site-functions" ${fpath})
    fi
    unset brew_prefix
fi

function autojump_preexec() {
    local _PWD_ARGS
    if [[ "${AUTOJUMP_KEEP_SYMLINKS:-}" == "1" ]]; then
        _PWD_ARGS=""
    else
        _PWD_ARGS="-P"
    fi
    { (autojump -a "$(pwd ${_PWD_ARGS})"&)>/dev/null 2>>|"${AUTOJUMP_DATA_DIR}/.autojump_errors" ; } 2>/dev/null
}

typeset -ga preexec_functions
if (( ${+commands[autojump]} )) && (( ${preexec_functions[(I)autojump_preexec]} == 0 )); then
    preexec_functions+=autojump_preexec
fi

function j {
    # Cannot use =~ due to MacPorts zsh v4.2, see issue #125.
    if (( ! ${+commands[autojump]} )); then
        echo "autojump: command not found"
        false
        return
    fi

    if [[ "$*" == -* ]]; then
        autojump "$@"
        return
    fi

    local new_path
    new_path="$(autojump "$@")"
    if [[ -d "${new_path}" ]]; then
        echo -e "\033[31m${new_path}\033[0m"
        cd "${new_path}"
    else
        echo "autojump: directory '$*' not found"
        echo "Try \`autojump --help\` for more information."
        false
    fi
}
