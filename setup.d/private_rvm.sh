#!/bin/bash


if [[ ! -r ${HOME}/.rvm/scripts/rvm ]]; then

    \curl -L https://get.rvm.io | \
	bash -s stable --ruby --ignore-dotfiles --user-install
    source ${HOME}/.rvm/scripts/rvm
    chmod -R og-w $rvm_path
fi


rc=${HOME}/.rvmrc
touch ${rc}

awk '
BEGIN {
  rvm_ignore_dotfiles = 0
  rvm_auto_reload_flag = 0
}
/rvm_ignore_dotfiles/ {
  print "rvm_ignore_dotfiles=1"
  rvm_ignore_dotfiles = 1
 }
/rvm_auto_reload/ {
  print "rvm_auto_reload_flag=1"
  rvm_auto_reload_flag = 1
}
{ print $0 }
END {
  if (rvm_ignore_dotfiles == 0) print "rvm_ignore_dotfiles=1"
  if (rvm_auto_reload_flag == 0) print "rvm_auto_reload_flag=1"
}
' $rc > $rc.$$
mv $rc.$$ $rc
