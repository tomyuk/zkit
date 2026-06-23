#
# setup.d/emacs
#

home_dir="${HOME:-}"
: "${ZKIT_EMACS_D:=${home_dir}/.emacs.d}"

if [[ -d "${ZKIT_EMACS_D}/.git" ]]; then
    ( cd "${ZKIT_EMACS_D}" && __zkit_run git pull )
else
    if [[ -n "${ZKIT_EMACS_REPO:-}" ]]; then
	if [[ -d "${ZKIT_EMACS_D}" ]]; then
	    mv "${ZKIT_EMACS_D}" "${ZKIT_EMACS_D}.$$.bak"
	fi
	__zkit_run git clone "${ZKIT_EMACS_REPO}" "${ZKIT_EMACS_D}"
    fi
fi

if [[ -n "$home_dir" ]]; then
    __zkit_install "${home_dir}/.emacs.d/dot.emacs" "${home_dir}/.emacs"
fi

unset home_dir

#(cd "$ZKIT_EMACS_D" && git submodule update --init)
