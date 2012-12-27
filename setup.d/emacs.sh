#
# setup.d/emacs
#

: ${ZKIT_EMACS_D:=${HOME}/.emacs.d}

if [[ -d ${ZKIT_EMACS_D}/.git ]]; then
    ( cd ${ZKIT_EMACS_D} && __zkit_run git pull )
else
    if [[ -n $ZKIT_EMACS_REPO ]]; then
	if [[ -d ${ZKIT_EMACS_D} ]]; then
	    mv ${ZKIT_EMACS_D} ${ZKIT_EMACS_D}.$$.bak
	fi
	__zkit_run git clone $ZKIT_EMACS_REPO ${ZKIT_EMACS_D}
    fi
fi

__zkit_install ${HOME}/.emacs.d/dot.emacs ${HOME}/.emacs

(cd $ZKIT_EMACS_D && git submodule update --init)

