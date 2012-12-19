#
# 01-functions
#

#{{ pathmerge [-a] <newpath>
#
#}}

function pathmunge () {
    local i j after=false

    if [[ $1 == -a ]]; then
	after=true
	shift
    fi

    for i in $@; do
	for (( j = 1; j <= $#path; j++ )); do
	    if [[ $path[j] == $i ]] { path[j]=() }
	done
	if $after; then
	    path=( $path $i )
	else
	    path=( $i $path )
	fi
    done
}

#{{ envpathmerge <name> <path>
#
#   ディレクトリ <path> と <path>/bin が存在する場合に
#   環境変数 <name>=<path> を設定し PATH に $path/bin を追加する
#   ディレクトリが存在しない場合には、変数 <name> を削除する
#}}

function envpathmunge() {
    if [[ -d "$2" && -d "$2/bin" ]]; then
	eval export $1="$2"
	pathmunge "$2/bin" $3
    else
	eval unset $1
    fi
}

#
