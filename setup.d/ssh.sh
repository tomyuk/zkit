#
# setup.d/ssh.sh
#

home_dir="${HOME:-}"
zkit_private="${ZKIT_PRIVATE:-${home_dir}/.zkit_private}"

ssh_dir="${home_dir}/.ssh"
if [[ -n "$home_dir" && ! -d "$ssh_dir" ]]; then
    mkdir "$ssh_dir"
fi


## build ssh_config

if [[ -n "$home_dir" && "${ZSH_VERSION:-}" != 4.* ]]; then

    : "${SSH_FORWARD_AGENT:=no}"

    typeset -a HOSTS
    HOSTS_CONF=()

    hosts_conf="${zkit_private}/share/hosts.conf"
    if [[ -r "$hosts_conf" ]]; then
	__zkit_readarray HOSTS_CONF < "$hosts_conf"
    fi
    __zkit_template templates/ssh_config.tmpl "${ssh_dir}/config" 600

elif [[ -n "$home_dir" && -s "${zkit_private}/share/ssh_config" ]]; then
    install -m 600 "${zkit_private}/share/ssh_config" "${ssh_dir}/config"
fi

## place authorized_keys

if [[ -n "$home_dir" && -s "${zkit_private}/secrets/authorized_keys" ]]; then
    install -m 600 "${zkit_private}/secrets/authorized_keys" "$ssh_dir/"
fi

## house keeping

if [[ -n "$home_dir" && -d "$ssh_dir" ]]; then
    chmod -R og-rwx "$ssh_dir"
fi

unset home_dir zkit_private ssh_dir hosts_conf
