#!/bin/bash

. ${ZKIT}/setup.d/ruby.sh

export rvm_path=${HOME}/.rvm

cat <<EOF > ${HOME}/.rvmrc
rvm_path=${rvm_path}
rvm_ignore_dotfiles=1
rvm_auto_reload_flag=1
EOF

if [[ -d $rvm_path ]]; then
    # rvm get latest
    # rvm get master
    # rvm reload
    :
else
    if [[ $UID -eq 0 ]]; then
	yum install -y gcc-c++ patch readline readline-devel zlib zlib-devel \
	    libyaml-devel libffi-devel openssl-devel make bzip2 \
	    autoconf automake libtool bison
    fi

    \curl -L https://get.rvm.io | \
	bash -s latest --ignore-dotfiles --user-install --path ${rvm_path} \
	>/dev/null
    source ${HOME}/.rvm/scripts/rvm
    
fi
if [[ $UID -eq 0 && -f /etc/profile.d/rvm.sh ]]; then
    rm /etc/profile.d/rvm.sh
fi

chmod -R og-w $rvm_path
hash -r

if [[ ! -d ${HOME}/.rvm/rubies/ruby-${default_ruby_version} ]]; then
    rvm install ${default_ruby_version}
    rvm use ${default_ruby_version} --default
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
