# -*- bash-script -*-
#
# setup.d/fwknop.sh
#

: ${FWKNOP_ALLOW_IP:=0.0.0.0}
: ${FWKNOP_USER:=fwkopclient}
: ${FWKNOP_PASSWD_FILE:=${ZKIT_PRIVATE}/secrets/fwknop_passwd}

# TODO: auto generate
__zkit_template templates/fwknoprc.tmpl ${HOME}/.fwknoprc 600
