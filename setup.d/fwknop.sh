# -*- bash-script -*-
#
# setup.d/fwknop.sh
#

: ${FWKNOP_PASSWD_FILE:=${zkit_private}/secrets/fwknop_passwd}

__zkit_template templates/fwknoprc.tmpl ${HOME}/.fwknoprc 600
