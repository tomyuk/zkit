## for emacs

case $(uname) in
    Linux)
	EDITOR=$(which emacs 2>/dev/null)
	export EDITOR
esac
