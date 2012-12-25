# -*- shell-script -*-

function assoc_new () {
    local _ifs i n
    local -a src
    declare -gA $1
    if [ $# -eq 3 ]; then
	_ifs=$IFS
	IFS=$2
	src=($3)
    else
	src=($2)
    fi
    n=${#src[@]}
    for (( i = 0; i < $n; i += 2 )); do
	eval "$1[\${src[$i]}]=\${src[$(($i+1))]}"
    done
    if [ "$_ifs" ]; then
	IFS=$_ifs
    fi
}

function assoc_map () {
    local -a keys
    local k v
    if [ $# -ne 2 ]; then
	die "assoc_map: Invalid args: $@"
    fi
    push_ifs $' \t\n'
    eval "keys=(\"\${!$1[@]}\")"
    for k in "${keys[@]}"; do
	eval "v=\${$1['$k']}"
	$2 "$k" "$v"
    done
    pop_ifs
}

