# -*- shell-script -*-
#
# Zkit utilities

if [[ -n $ZSH_VERSION ]]; then
    if [[ $TERM == xterm* ]]; then
	autoload -Uz colors
	colors
    fi
    autoload -Uz expand_template
else
    source ${ZKIT}/bash/lib/colors.sh
    source ${ZKIT}/bash/lib/expand_template.sh
fi

#{{
# 
#}}

zkit_debug=${zkit_debug=false}

function __zkit_run () {
    if ${zkit_debug}; then
	$@
    else
	$@ >/dev/null
    fi
}

function __zkit_msg () {
    if ${zkit_debug}; then
	if [[ $TERM == xterm* ]]; then
	    echo "${fg[green]}$*$reset_color"
	else
	    echo $*
	fi
    fi
}

function __zkit_err () {
    if [[ $TERM == xterm* ]]; then
	echo "${fg[red]}$*$reset_color"
    else
	echo $*
    fi
}

function __zkit_die () {
    if [[ $TERM == xterm* ]]; then
	echo "${bg[red]}${fg_bold[white]}$*$reset_color"
    else
	echo $*
    fi
    exit 1
}

function __zkit_install () {
    if [[ -z "$1" || -z "$2" ]]; then
	__zkit_die "!! install_private: missing args:" $@
    fi
    if [[ -r ${ZKIT}/$1 ]]; then
	if [[ -a $2 ]]; then
	    rm -f $2
	fi
	cp ${ZKIT}/$1 $2
	__zkit_msg "++ Copied: $1 -> $2"
    else
	__zkit_err "-- Missing or cannot read $1"
    fi
}

function __zkit_template () {
    local temp=${ZKIT}/var/tmp/$1.out

    if [[ -r ${ZKIT}/$1 ]]; then
	expand_template <${ZKIT}/$1 >$temp
	if [[ -a $2 ]]; then
	    rm -f $2
	fi
	cp $temp $2
	rm $temp
	if [[ -n "$3" ]]; then
	    chmod $3 $2
	fi
	__zkit_msg "++ Template: $1 -> $2"
    else
	__zkit_err "-- Cannot read template $1"
    fi
}

function __zkit_whence () {
    if [[ -n $ZSH_VERSION ]]; then
	whence $1
    else
	type -p $1
    fi
}
