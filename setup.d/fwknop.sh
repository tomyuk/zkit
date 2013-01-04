# -*- bash-script -*-
#
# setup.d/fwknop.sh
#

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
