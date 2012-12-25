#
# setup.d/20-ssh.sh
#

ssh_dir=${HOME}/.ssh
if [[ ! -d $ssh_dir ]]; then
    mkdir $ssh_dir
fi
chmod -R og-rwx $ssh_dir

install_template ssh_config .ssh/config 600
