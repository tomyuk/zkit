# -*- shell-script -*-
#{{
#   ===================
#   String manipulation
#   ===================
#   :Author: Tomoyuki Kano <tomo@appletz.jp>
#   :License: BSD
#   :Abstract: Provides common functions used to manipulate text strings.
#
#   .. contents::
#}}

#{{ string_upper string
#
#   Converts a string to upper case.
#
#}}

function string_upper () {
    if [ $# -eq 1 ]; then
	echo "${1^^}"
    elif [ $# -eq 2 ]; then
	echo "${1^^$2}"
    else
	die "var_upper: Invalid arguments:" $(quote "$@")
    fi
}

#{{ string_lower string
#
#   Converts a string to lower case.
#
#}}

function string_lower () {
    if [ $# -eq 1 ]; then
	echo "${1,,}"
    elif [ $# -eq 2 ]; then
	echo "${1,,$2}"
    else
	die "var_lower: Invalid arguments:" $(quote "$@")
    fi
}

function string_startswith () {
    [[ ${1::${#2}} == $2 ]]
}


#{{ string_endswith text suffix
#
#   Checks whether a string ends with a given suffix. Exit status is
#   non-zero if the condition is not met.
#}}
function string_endswith () {
    [[ ${1:$((${#1} - ${#2}))} == $2 ]]
}

#{{ string_in text substring
#
#   Checks whether the given strings contains a substring inside it. Exit
#   status is non-zero if the condition is not satisfied.
#}}
function string_in () {
    [[ $2 == *$1* ]]
}

#{{ string_index haystack needle
#
#   
#}}

function string_index () {
    local x=${1%%$2*}
    if [ "$x" == "$1" ]; then
	echo -1
    else
	echo ${#x}
    fi
}

#++ string_ord text [ format ]
#
#   Returns the ASCII code of the first character of the a string. Output is
#   in decimal by default, but the behaviour can be changed by passing the
#   ``format`` option, whose valid values are:
#
#   * ``d`` for decimal output (default).
#   * ``x`` for lowercase hexadecimal output.
#   * ``X`` for uppercase hexadecimal output.
#   * ``o`` for octal output.
#--
function ord () {
    local f=${2:-d}
    printf "%${f::1}" "'${1::1}"
}


#++ string_ord text [ format [ separator ] ]
#
#   Returns ASCII codes for *all* characters in a string. Output is in
#   hex by default, but format can be changed using the same specifiers
#   as for the `string_ord` function. ASCII codes will be separated
#   using the given ``separator`` string. You can pass an empty string to
#   join the ASCII codes.
#--
function string_ord () {
    local n=${#1} fmt=${2:-%02x} i

    printf "${fmt}" "'${1:0:1}"
    fmt="%s${fmt}"
    for (( i = 1; i < $n; i++ )); do
        printf "$fmt" "$3" "'${1:$i:1}"
    done
}

#{{ string_lstrip
#
#   Removes blank characters from the start of lines of the given
#   text. Works like a filter, using both standard input and
#   output.
#}}
function var_lstrip () {
    if [ "$1" == "-p" ]; then
	echo "${2#${2%%[![:space:]]*}}"
    elif [ $# -eq 1 ]; then
	eval "$1=\${$1#\${$1%%[![:space:]]*}}"
    else
	eval "$2=\${$1#\${$1%%[![:space:]]*}}"
    fi
}

#{{ string_rstrip
#
#   Removes blank characters from the end of lines of the given
#   text. Works like a filter, using both standard input and
#   output.
#}}
function var_rstrip () {
    if [ "$1" == "-p" ]; then
	echo "${2%${2##*[![:space:]]}}"
    elif [ $# -eq 1 ]; then
	eval "$1=\${$1%\${$1##*[![:space:]]}}"
    elif [ $# -eq 2 ]; then
	eval "$2=\${$1%\${$1##*[![:space:]]}}"
    elif [ $# -eq 3 ]; then
	eval "$2=\${1%\${1##*[![$3]]}}"
    fi
}


#++ string_strip
#
#   Removes blank characters *both* from the end and the start of lines
#   given. Works like a filter, using both standard input and output.
#--
function string_strip () {
    echo $1
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
	die "var_strip: Invalid args:" "$@"
    fi
}

#++ string_join separator [ string1 [ string2 ... [ stringN ] ] ]
#
#   Concatenates all given strings into a single one using the specified
#   separator.
#--
function string_join () {
    push_ifs "$1"
    shift
    echo "$*"
    pop_ifs
}


