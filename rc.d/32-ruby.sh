######################################################################
# ruby rvm

if [[ $EUID -ne 0 && -r "${HOME}/.rvm/scripts/rvm" ]] ; then
    source "${HOME}/.rvm/scripts/rvm"
    fpath=( ${HOME}/.rvm/scripts/zsh/Completion $fpath )
    compinit
    pathmunge "${HOME}/.rvm/bin"
elif [[ -r "/usr/local/lib/rvm" ]] ; then
    source "/usr/local/lib/rvm"
fi

# eof
