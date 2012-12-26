#
# setup.d/ssh.sh
#

ssh_dir=${HOME}/.ssh
if [[ ! -d $ssh_dir ]]; then
    mkdir $ssh_dir
fi

: ${SSH_FORWARD_AGENT:=no}

__zkit_template templates/ssh_config.tmpl ${ssh_dir}/config 600

chmod -R og-rwx $ssh_dir
