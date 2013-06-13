#!/bin/bash

# Disables 2013-06-13


# if [[ ! -r ${HOME}/.rvm/scripts/rvm ]]; then

#     # rvm stable には cdpath についてのバグがあるので master を使用
#     \curl -L https://get.rvm.io | \
# 	bash -s master --ruby --ignore-dotfiles --user-install
#     source ${HOME}/.rvm/scripts/rvm
#     chmod -R og-w $rvm_path
# fi


# rc=${HOME}/.rvmrc
# touch ${rc}

# awk '
# ! /^(rvm_ignore_dotfiles|rvm_auto_reload)/ { print $1 }
# END {
#   print "rvm_ignore_dotfiles=1"
#   print "rvm_auto_reload_flag=1"
# }
# ' $rc > $rc.$$
# mv $rc.$$ $rc
