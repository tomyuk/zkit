#
# PATH の設定
#

if [[ -f /etc/redhat-release ]]; then
    case $(cat /etc/redhat-release); in
	"Fedora release 18 *")
	    export PATH=/usr/sbin:/usr/sbin:
	    ;;
	*)
	    export PATH=/usr/sbin:/usr/bin:/sbin:/usr/sbin
	    ;;
    esac
elif [[ $(uname -s ) == Darwin ]]; then
    export PATH=/usr/sbin:/usr/bin:/sbin:/usr/sbin
else
    export PATH=/usr/sbin:/usr/bin:/sbin:/usr/sbin
fi

pathmunge /usr/local/bin
pathmunge /usr/local/sbin
pathmunge $ZDOTDIR/scripts
pathmunge $HOME/.private/bin
pathmunge $HOME/.private/tools

#
# FPATH
#
fpath=( $ZDOTDIR/functions $fpath )
