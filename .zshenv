#
# order file         login interactive batch
# ----- ------------ ----- ----------- -----
# 1.    ~/.zshenv    O     O           O
# 2.    ~/.zprofile  O
# 3.    ~/.zshrc     O     O
# 4.    ~/.zlogin    O



setopt No_GLOBAL_RCS	# /etc/zsh* は読み込まない

zshenv=$(readlink ${HOME}/.zshenv)
if [[ ${zshenv:0:1} != '/' ]]; then	# 絶対パスに
  zshenv="${HOME}/${zshenv}"
fi
ZDOTDIR=$(dirname $zshenv)

if [[ -z $ZKIT ]]; then
    ZKIT=${ZDOTDIR}
fi
export ZKIT
