# -*- shell-script -*-
#++
#   ===================
#   Lure core functions
#   ===================
#   :Author: Tomoyuki Kano <tomo@appletz.jp>
#   :Copyright: 2012 TomoyukiKano
#   :License: GPL3
#   :Abstract: Provides functions of common usage in shell code.
#       This module is always imported by Lure interpreter at startup.
#
#   .. contents::
#--

declare -rx LURE_VERSION='0.1'

readonly LURE LURE_FROM

if [ ! "$__lure_modules__" ]; then
    declare -a __lure_modules__=( core )
fi

declare -a __lure_ifs_stack
function push_ifs () {
    __lure_ifs_stack[${#__lure_ifs_stack[@]}]=$IFS
    if [ $# -eq 0 ]; then
	IFS=$' \t\n'
    else
	IFS=$1
    fi
}

function pop_ifs () {
    local n=$(( ${#__lure_ifs_stack[@]} - 1 ))
    if [ $n -lt 0 ]; then
	echo "IFS stack underflow" >&2
	exit 1
    fi
    IFS=${__lure_ifs_stack[$n]}
    unset __lure_ifs_stack[$n]
}

push_ifs '.'
declare -ar LURE_VERSINFO=(${LURE_VERSION})
pop_ifs

#++ warn message
#
#   Prints a message to the standard error stream.
#--
function warn () {
    echo "$@" >&2
}


#++ die [ message ]
#
#   Exits running process with a non-zero status, optionally printing an
#   error message before exiting.
#--
function die () {
    [ "$1" ] && warn "$@"
    if ! $__lure_interactive; then
	exit 1
    fi
}

function quote () {
    for s in "$@"; do
	echo "'$s'"
    done
}

#++ depends tool1 [ tool2 [ ... [ toolN ] ] ]
#
#   Checks whether a list of commands are available on the system and can be
#   accessed by means of the current ``$PATH`` setting. If one of the
#   dependencies is not met, return status will be non-zero. If you want to
#   know exactly which tool was not found then check the tools one at
#   a time:
#
#   .. sourcecode:: bash
#
#       need openssl || die "openssl not found"
#       need convert || die "ImageMagick is not installed"
#--
function depends () {
    local prog err
    for prog in "$@"; do
        type -P "$prog" &> /dev/null || {
	    echo "cannot find dependency command '$prog'" >&2
	    err=1
	}
    done
    if [ "$err" ]; then
	exit 1
    fi
}

#++ import module
#
#   Loads one module from the library search path, which is itself
#   taken from the ``$BILLPATH`` environment variable. If a module is not
#   found, execution will be aborted and an informative message will be
#   printed to standard error.
#
#   The function will search for a function named the same as the module
#   name with slashes changed to underscores, prefixed with
#   ``__bill_module__``. If the function is found, it will be executed
#   instead of sourcing the module from disk.
#
#   On successful module load the module name will be appended to the
#   ``bill_loaded_modules`` array, and when trying to load the module
#   afterwards will do nothing.
#--
function import () {
    local ame path funcname

    # Check whether the module is already loaded.
    for modname in "${__lure_modules__[@]}"; do
        # Skip it if already loaded.
        [[ $modname = $1 ]] && return
    done

    funcname="__lure_module__${1//\//__}"
    if [[ $(type -t "$funcname") == function ]]
    then
        # The module is an inline piece of preloaded code. All defs are
        # inside the function, so we just execute the function.
        __lure_reuired__=true $funcname
    else
        local _ifs=$IFS
        local found=false

        IFS=:
        for d in $LUREPATH; do
            if [ -r "$d/$1.lure" ]; then
                __lure_imported__=true source "$d/$1.lure"
		found=true
                break
            fi
        done
        IFS=$_ifs

        if ! $found; then
            echo "Could not find module '$1' in LUREPATH=$LUREPATH" >&2
            exit 1
	fi
    fi

    __lure_modules__=( "${__lure_modules__[@]}" "$1" )
}

function __lure_import () {
    local cur=$2 i j n=0
    COMPREPLY=()
    compopt -o filenames
    for i in ${LUREPATH//:/$'\n'}; do
	for j in $( compgen -f $i/$cur ); do
	    if [[ $j == *.lure ]]; then
		j=${j%.lure}
		COMPREPLY[n++]=${j#$i/}
	    fi
	done
    done
}
complete -F __lure_import import


#++ main
#
#   Checks whether a module is running as a standalone script and runs the
#   supplied function with a set of arguments. This allows modules both being
#   imported and for acting as a script. For example.
#
#   .. sourcecode:: bash
#
#       foo () {
#           echo "I am foo"
#       }
#
#       main foo
#--
function main () {
    [ "$__lure_imported__" ] || "$@"
}

declare -xf import push_ifs pop_ifs die warn depends main
