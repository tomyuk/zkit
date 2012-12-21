######################################################################
# ruby rvm

if [[ -r "${HOME}/.rvm/scripts/rvm" ]] ; then
    source "${HOME}/.rvm/scripts/rvm"
    pathmunge "${HOME}/.rvm/bin"

    fpath=( ${HOME}/.rvm/scripts/zsh/Completion $fpath )
    compinit


fi

# eof
