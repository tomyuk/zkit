# -*- bash-script -*-
#
# setup.d/fwknop.sh
#

: ${FWKNOP_PASSWD_FILE:=${ZKIT_PRIVATE}/secrets/fwknop_passwd}

__zkit_template templates/fwknoprc.tmpl ${HOME}/.fwknoprc 600
