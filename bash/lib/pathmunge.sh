#--------------------
# pathmerge <newpath> ['after']
#   <newpath> で指定したディレクトリをPATH に追加する。
#   <newpath> が PATH に含まれている場合はまずそれを削除してから追加を行う。
#   'after' が指定されていれば PATH の末尾に <newpath> を追加する
#   そうでなければ PATH の先頭に <newpath> を追加する

pathmunge () {
    while [[ $PATH =~ :$1: ]]; do
	PATH=${PATH/:$1:/:}
    done
    while [[ $PATH =~ ^$1: ]]; do
	PATH=${PATH/#$1:/}
    done
    while [[ $PATH =~ :$1$ ]]; do
	PATH=${PATH/%:$1/}
    done
    if [[ "$2" == "after" ]]; then
        PATH=$PATH:$1
    else
        PATH=$1:$PATH
    fi
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
