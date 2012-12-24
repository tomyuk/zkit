#
# 基本的な初期化
#

umask 027

### for Zkit
zstyle ':zkit:*' rprompt on
zstyle ':zkit:*' compinit_secure off
zstyle ':zkit:*' vcs_info off

for d in cache tmp; do
    if [[ ! -d ${ZKIT}/var/$d ]]; then
	mkdir -p ${ZKIT}/var/$d
    fi
done
TMPPREFIX=${ZKIT}/var/tmp/zsh

if [[ -r ${ZKIT}/var/zkit_local ]]; then
    source ${ZKIT}/var/zkit_local
fi

### fpath の設定
fpath=( $ZDOTDIR/functions $fpath )

### zsh オプション

# Glob

setopt extended_glob
#setopt nonomatch		# globが失敗してもエラーにせずそのまま返す
setopt null_glob			# globが失敗したら空を返す (rvm で必要)

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

#
# PATH の設定
#

if [[ -f /etc/redhat-release ]]; then
    case $(cat /etc/redhat-release); in
	"Fedora release 18 *")
	    path=( /usr/sbin /usr/bin )
	    ;;
	*)
	    path=( /usr/sbin /usr/bin /sbin /bin )
	    ;;
    esac
elif [[ $(uname -s ) == Darwin ]]; then
    path=( /usr/sbin /usr/bin /sbin /bin )
else
    path=( /usr/sbin /usr/bin /sbin /bin )
fi

__private_path=(
    ${HOME}/.private/bin
    ${HOME}/.local/bin
    ${ZKIT}/bin
)

path=(
    $__private_path
    /usr/local/sbin
    /usr/local/bin
    $path
    )

cdpath=( $HOME ${HOME}/Projects )
