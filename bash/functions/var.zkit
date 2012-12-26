# -*- shell-script -*-

function var_upper () {
    if [ $# -eq 1 ]; then
	eval "$1=\${$1^^}"
    elif [ $# -eq 2 ]; then
	eval "$2=\${$1^^}"
    elif [ $# -eq 3 ]; then
	eval "$2=\${$1^^$3}"
    else
	die "var_upper: Invalid arguments:" $(quote "$@")
    fi
}


function var_lower () {
    if [ $# -eq 1 ]; then
	eval "$1=\${$1,,}"
    elif [ $# -eq 2 ]; then
	eval "$2=\${$1,,}"
    elif [ $# -eq 3 ]; then
	eval "$2=\${$1,,$3}"
    else
	die "var_lower: Invalid arguments:" $(quote "$@")
    fi
}

# var_lstrip source [dest [pattern-list]]

function var_lstrip () {
    if [ $# -eq 1 ]; then
	eval "$1=\${$1#\${$1%%[![:space:]]*}}"
    elif [ $# -eq 2 ]; then
	eval "$2=\${$1#\${$1%%[![:space:]]*}}"
    elif [ $# -eq 3 ]; then
	eval "$2=\${$1#\${$1%%[!($3)]*}}"
    else
	die "var_lstrip: Invalid arguments:" $(quote "$@")
    fi
}

# var_rstrip source [dest [pattern-list]]

function var_rstrip () {
    if [ $# -eq 1 ]; then
	eval "$1=\${$1%\${$1##*[![:space:]]}}"
    elif [ $# -eq 2 ]; then
	eval "$2=\${$1%\${$1##*[![:space:]]}}"
    elif [ $# -eq 3 ]; then
	eval "$2=\${1%\${1##*[!($3)]}}"
    else
	die "var_rstrip: Invalid arguments:" $(quote "$@")
    fi
}

# var_strip source [dest [pattern-list]]
#
# example:
#   var_strip a x "[:space:]|\[|\]"

function var_strip () {
    if [ $# -eq 1 ]; then
	eval "$1=\${$1%\${$1##*[![:space:]]}}"
	eval "$1=\${$1#\${$1%%[![:space:]]*}}"
    elif [ $# -eq 2 ]; then
	eval "$2=\${$1%\${$1##*[![:space:]]}}"
	eval "$2=\${$2#\${$2%%[![:space:]]*}}"
    elif [ $# -eq 3 ]; then
	eval "$2=\${$1%\${$1##*[!($3)]}}"
	eval "$2=\${$2#\${$2%%[!($3)]*}}"
    else
	die "var_strip: Invalid arguments:" $(quote "$@")
    fi
}

