#
# 基本的な初期化
#


autoload -Uz add-zsh-hook

#
# fpath の設定
#
fpath=( $ZDOTDIR/functions $fpath )


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

path=(
    /usr/local/bin
    /usr/local/sbin
    $ZDOTDIR/scripts
    $HOME/.private/bin
    $HOME/.private/tools
    $path
    )

