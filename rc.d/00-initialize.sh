#
# 基本的な初期化
#

### オプション

# Glob

setopt extended_glob
setopt nonomatch

# Job Control
setopt No_check_jobs		# exitするときにjobの状態をチェックしない
setopt No_hup			# exitするときにjobに HUP を送らない
setopt notify			# 新たなプロンプトの表示を待たずに直ちに job の状態を報告する
setopt ignore_eof		# 

setopt short_loops		# 制御構文で短縮形を使用する

# for cd
setopt auto_cd			# 指定したコマンドが存在せずディレクトリ名と一致した場合cdする
#setopt autopushd               # cd したディレクトリをディレクトリスタックに push する


# Hook
autoload -Uz add-zsh-hook

### for Zkit
zstyle ':zkit:*' rprompt on

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
