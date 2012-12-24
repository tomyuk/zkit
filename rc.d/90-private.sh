#
# 90-private.sh
#

pathmunge "${__private_path[@]}"

__rc=${HOME}/.private/zsh/zshrc-$(hostname)
if [[ -r $__rc ]]; then
    source $__rc
fi
__rc=${HOME}/.private/zsh/zshrc-user-${USER}
if [[ -r $__rc ]]; then
    source $__rc
fi
unset __rc
