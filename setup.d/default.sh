# -*- bash-script -*-
#
# default of common settings
#

if [[ -z $FULLNAME ]]; then
    FULLNAME=$(fgrep $USER /etc/passwd | cut -d: -f5)
fi

if [[ -z $EMAIL ]]; then
    EMAIL="${USER}@${$HOSTNAME}"
fi

if [[ -z $GPG_SIGNER ]]; then
    if __zkit_have gpg2; then
	gpg=gpg2
    elif __zkit_have gpg; then
	gpg=gpg
    fi
    if [[ -n $gpg ]]; then
	if [[ -r ${HOME}/.gnupg/gpg.conf ]]; then
	    GPG_SIGNER=$(awk '/^default-key/ { print $2 }' ${HOME}/.gnupg/gpg.conf)
	fi
	if [[ -z $GPG_SIGNER ]]; then
	    GPG_SIGNER=$( $gpg -k 2>/dev/null |
		awk '/^pub/ { split($2,x,"/"); print x[2]; exit }' )
	fi
    fi
fi
