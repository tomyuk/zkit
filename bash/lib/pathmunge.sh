#

source ${ZKIT}/bash/lib/array.sh

#--------------------
# pathmerge <newpath> ['after']
#   <newpath> で指定したディレクトリをPATH に追加する。
#   <newpath> が PATH に含まれている場合はまずそれを削除してから追加を行う。
#   'after' が指定されていれば PATH の末尾に <newpath> を追加する
#   そうでなければ PATH の先頭に <newpath> を追加する

pathmunge () {
    local after=false i args
    if [[ "$1" == "-a" ]]; then
	after=true
	shift
    fi
    args=("$@")
    array_reverse args
    for i in "${args[@]}"; do
	while [[ $PATH =~ :$i: ]]; do
	    PATH=${PATH/:$i:/:}
	done
	while [[ $PATH =~ ^$i: ]]; do
	    PATH=${PATH/#$i:/}
	done
	while [[ $PATH =~ :$i$ ]]; do
	    PATH=${PATH/%:$i/}
	done
	if $after; then
            PATH=$PATH:$i
	else
            PATH=$i:$PATH
	fi
    done
}

#--------------------
# envpathmerge <name> <path>
# ディレクトリ <path> と <path>/bin が存在する場合に
# 環境変数 <name>=<path> を設定し PATH に $path/bin を追加する
# ディレクトリが存在しない場合には、変数 <name> を削除する

function envpathmunge() {
    if [[ -d "$2" && -d "$2/bin" ]]; then
	eval export $1="$2"
	pathmunge "$2/bin" $3
    else
	eval unset $1
    fi
}

