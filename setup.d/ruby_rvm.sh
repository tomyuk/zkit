#!/bin/bash


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
	bash -s master --ruby --ignore-dotfiles --user-install --path ${rvm_path} \
	>/dev/null
    source ${HOME}/.rvm/scripts/rvm
    
fi
if [[ $UID -eq 0 && -f /etc/profile.d/rvm.sh ]]; then
    rm /etc/profile.d/rvm.sh
fi

chmod -R og-w $rvm_path
hash -r
