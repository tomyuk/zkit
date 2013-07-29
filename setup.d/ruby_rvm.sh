#!/bin/bash

if [[ ! -r ${HOME}/.rvm/scripts/rvm ]]; then

    \curl -L https://get.rvm.io | \
	bash -s latest --ruby --ignore-dotfiles --user-install
    source ${HOME}/.rvm/scripts/rvm
    chmod -R og-w $rvm_path
fi


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
