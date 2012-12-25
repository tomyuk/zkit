# -*- shell-script -*-
#

# array_reverse array-name [ dest-name ]

function array_reverse () {
    local src=$1 dest n i
    if [ $# -eq 1 ]; then
	dest=tmp
	replace=true
    elif [ $# -eq 2 ]; then
	dest=$2
	replace=false
    else
	die "array_reverse: Invalid arguments:" $(quote "$@")
	return 1
    fi
    eval "n=\${#${src}[@]}"
    eval "${dest}=()"
    for (( i = n-1; i >= 0; i-- )); do
	eval "${dest}[\${#${dest}[@]}]=\${${src}[i]}"
    done
    if $replace; then
	eval "${src}=()"
	for (( i = 0; i < n; i++ )); do
	    eval "${src}[\${#${src}[@]}]=\${tmp[i]}"
	done
    fi
}

function array_push () {
    eval "$1[\${#$1[@]}]=\$2"
}

# array_pop stack-name [ dest-name ]

function array_pop () {
    eval "local n=\$(( \${#$1[@]} - 1 ))"
    if [ $n -lt 0 ]; then
	echo "pop: stack underflow: $1" >&2
	exit 1
    fi
    if [ $# -eq 1 ]; then
	eval "echo \${$1[$n]}"
    elif [ $# -eq 2 ]; then
	eval "$2=\${$1[$n]}"
    else
	die "array_pop: Invalid arguments:" $(quote "$@")
	return 1
    fi
    eval "unset $1[$n]"
}

# array_join separator array-name dest-name

function array_join () {
    push_ifs "$1"
    if [ $# -ne 3 ]; then
	die "array_join: Invalid arguments:" $(quote "$@")
	return 1
    fi
    eval "$3=\"\${$2[*]}\""
    pop_ifs
}


