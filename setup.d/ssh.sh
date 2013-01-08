#
# setup.d/ssh.sh
#

ssh_dir=${HOME}/.ssh
if [[ ! -d $ssh_dir ]]; then
    mkdir $ssh_dir
fi


## build ssh_config

if [[ $ZSH_VERSION != 4.* ]]; then

    : ${SSH_FORWARD_AGENT:=no}

    typeset -a HOSTS
    HOSTS_CONF=()

    hosts_conf=${ZKIT_PRIVATE}/share/hosts.conf
    if [[ -r $hosts_conf ]]; then
	__zkit_readarray HOSTS_CONF < ${hosts_conf}
    fi
    __zkit_template templates/ssh_config.tmpl ${ssh_dir}/config 600

elif [[ -s ${ZKIT_PRIVATE}/share/ssh_config ]]; then
    install -m 600 ${ZKIT_PRIVATE}/share/ssh_config ${ssh_dir}/config
fi

## place authorized_keys

if [[ -s ${ZKIT_PRIVATE}/secrets/authorized_keys ]]; then
install -m 600 ${ZKIT_PRIVATE}/secrets/authorized_keys $ssh_dir/
fi

## house keeping

chmod -R og-rwx $ssh_dir
