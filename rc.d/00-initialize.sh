#
# 基本的な初期化
#


autoload -Uz add-zsh-hook

USE_RPROMPT=true

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
    export PATH=/usr/sbin:/usr/bin:/sbin:/bin
else
    export PATH=/usr/sbin:/usr/bin:/sbin:/bin
fi

path=(
    $HOME/.private/bin
    $HOME/.local
    $ZDOTDIR/bin
    /usr/local/sbin
    /usr/local/bin
    $path
    )

cdpath=( $HOME )
