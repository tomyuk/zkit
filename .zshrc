#
# ~/.zkit/zshrc
#

umask 027

function __zkit_load_rc_d () {
    setopt null_glob
    local i
    for i in ${ZDOTDIR}/rc.d/[0-9a-zA-Z]*.sh; do
	if [[ -r "$i" ]]; then
            # 対話型動作の場合のみ rc.d スクリプトの出力を表示する。
            if [[ -n "$PS1" ]]; then
		. "$i"
            else
		. "$i" >/dev/null 2>&1
            fi
	fi
    done
    unsetopt null_glob
}
__zkit_load_rc_d
