# -*- bash-script -*-
#
# setup.d/fwknop.sh
#

if [[ $ZSH_VERSION != 4.* ]]; then

    : ${FWKNOP_ALLOW_IP:=0.0.0.0}
    : ${FWKNOP_USER:=fwknopclient}
    : ${FWKNOP_PASSWD_FILE:=${ZKIT_PRIVATE}/secrets/fwknop_passwd}

    typeset -a HOSTS
    HOSTS_CONF=()

    hosts_conf=${ZKIT_PRIVATE}/share/hosts.conf
    if [[ -r $hosts_conf ]]; then
	__zkit_readarray HOSTS_CONF < ${hosts_conf}
    fi
    __zkit_template templates/fwknoprc.tmpl ${HOME}/.fwknoprc 600

elif [[ -s ${ZKIT_PRIVATE}/share/fwknoprc ]]; then
    install -m 600 ${ZKIT_PRIVATE}/share/fwknoprc ${HOME}/.fwknoprc
fi
