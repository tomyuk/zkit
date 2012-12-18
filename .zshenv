#
# order file         login interactive batch
# ----- ------------ ----- ----------- -----
# 1.    ~/.zshenv    O     O           O
# 2.    ~/.zprofile  O
# 3.    ~/.zshrc     O     O
# 4.    ~/.zlogin    O



setopt No_GLOBAL_RCS
zshenv=$(readlink ${HOME}/.zshenv)
if [[ ${zshenv:0:1} != '/' ]]; then
  zshenv="${HOME}/${zshenv}"
fi
ZDOTDIR=$(dirname $zshenv)

#
# fpath の設定
#
fpath=( $ZDOTDIR/functions $fpath )


#PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
