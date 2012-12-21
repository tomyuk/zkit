######################################################################
# ruby rvm

function __zkit_rvm_prompt () {
    local prompt=$(${rvm_bin_path}/rvm-prompt i v g)
    if [[ -n $prompt ]]; then
	local csi=$'\e['
	echo "%{${csi}48;5;88;38;5;15m%}$prompt%{${csi}33m%}"
    fi
}

if [[ -r "${HOME}/.rvm/scripts/rvm" ]] ; then
    source "${HOME}/.rvm/scripts/rvm"
    pathmunge "${HOME}/.rvm/bin"

    fpath=( ${HOME}/.rvm/scripts/zsh/Completion $fpath )
    compinit

    if [[ -n "$RUBY_VERSION" ]]; then
    	rvm use >/dev/null
    fi
    RPROMPT="\$(__zkit_rvm_prompt) $RPROMPT"
fi

# eof
