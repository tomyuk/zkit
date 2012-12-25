#!/usr/bin/env bash

#{{
#
#   ====================
#   Lure Template Engine
#   ====================
#
#   :Author: Tomoyuki Kano <tomo@appletz.jp>
#   :License: BSD
#   :Abstract:
#
#   .. contents::
#
#   Template Language
#   =================
#
#   Literal shell code execution
#       Using ``{% bash-statement %}``.
#
#   .. sourcecode:: bash
#
#       Hello {= $name =}!
#       {% for (( i=0; i++ < 2; )); do -%}
#       {%-  for (( j=0; j++ < 2; )); do -%}
#           Line [{= $i =}] [{= $j =}]
#       {%   done -%}
#       {% done -%}
#
#   xxxxx
#
#}}


#{{ template <input >output
#
#   Compile template and execute.
#
#}}

function expand_template () {
    local line
    local re_inner='(.*)(\{%-?)[ \t\n]+(.+)[ \t\n]+(-?%\})(.*)'
    local -a stack=() out
    local -i i=0
    local _ifs=$IFS

    IFS=
    mapfile line
    line="${line[*]}"
    while [[ $line =~ $re_inner ]]; do
	line=${BASH_REMATCH[1]}
	begin=${BASH_REMATCH[2]}
	stmnt=${BASH_REMATCH[3]}
	end=${BASH_REMATCH[4]}
	tail=${BASH_REMATCH[5]}

	if [ $begin == '{%-' ]; then
	    line="${line%${line##*[![:space:]]}}"
	fi
	if [ $end == '-%}' ]; then
	    tail="${tail#${tail%%[![:space:]]*}}"
	fi

	stack[i++]=$(__template_expand_expr "${tail}")
	stack[i++]="${stmnt}"
    done
    stack[i++]=$(__template_expand_expr "${line}")
    array_reverse stack out

    IFS=$'\n'
    code="${out[*]}"
    IFS=$' \t\n'
    # echo '----------------------------------------------------------------------'
    # echo $code
    # echo '----------------------------------------------------------------------'
    eval "( $code )"
    IFS=$_ifs
}

function __template_expand_expr () {
    local _ifs=$IFS
    local re_expr='(.*)\{=(.*)=\}(.*)'
    local left=$1 expr right
    local -i i n=0
    local -a out=()
    
    IFS=$' \t\n'
    while [[ $left =~ $re_expr ]]; do
	left=${BASH_REMATCH[1]}
	printf -v expr '(echo %s)|ripnl' "${BASH_REMATCH[2]}"
	printf -v right 'echo -n %q' "${BASH_REMATCH[3]}"
	out[n++]="$right"
	out[n++]="$expr"
    done
    # reverse output
    printf 'echo -n %q\n' "$left"
    for (( i = n; i-- > 0; )); do
	echo "${out[i]}"
    done
    IFS=$_ifs
}

function ripnl () {
    local line _fs=$IFS
    IFS=
    while read -r line; do
	if declare -p lastline >/dev/null 2>&1; then
	    echo "$lastline"
	fi
	local lastline=$line
    done
    if declare -p lastline >/dev/null 2>&1; then
	echo -n "$lastline"
    fi
    IFS=$_ifs
}

#{{ array_reverse src_name dest_name
#
#   Compile template and execute.
#
#}}

function array_reverse () {
    local src=$1 dest=$2 n i
    eval "n=\${#${src}[@]}"
    eval "${dest}=()"
    for (( i = n-1; i >= 0; i-- )); do
	eval "${dest}[\${#${dest}[@]}]=\${${src}[i]}"
    done
}

# Eof
