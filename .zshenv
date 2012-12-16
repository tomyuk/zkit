#
# order file         login interactive batch
# ----- ------------ ----- ----------- -----
# 1.    ~/.zshenv    O     O           O
# 2.    ~/.zprofile  O
# 3.    ~/.zshrc     O     O
# 4.    ~/.zlogin    O



setopt No_GLOBAL_RCS
ZDOTDIR=$(dirname $(readlink -f ${HOME}/.zshenv))

#
# fpath の設定
#
fpath=( $ZDOTDIR/functions $fpath )


#PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
