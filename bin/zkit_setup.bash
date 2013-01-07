#!/usr/bin/env bash

#{{
# Setup zkit environment
#}}

## default_settings
export ZKIT=${ZKIT=${HOME}/.zkit}
export ZKIT_PRIVATE=${ZKIT_PRIVATE=${HOME}/.zkit_private}

: ${ZKIT_DEBUG:=false}
: ${ZKIT_AUTOUPDATE:=true}
: ${ZKIT_PRIVATE_REPO:=}

prog=$(basename $0)
opts=($(getopt -n $prog -- v $*))
if [[ $? -ne 0 ]]; then
    echo >&2 "Usage: $prog [-v]
  -v   verbose
"
    exit 2
fi
for opt in $opts; do
    case $opt in
	-v) ZKIT_DEBUG=true ;;
    esac
done

## import user settings
rc="${HOME}/.zkitrc"
if [[ -r $rc ]]; then
    source $rc
fi

rc="${ZKIT_PRIVATE}/zkitrc"
if [[ -r $rc ]]; then
    source $rc
fi


## check ZKIT
if [[ ! -d ${ZKIT} ]]; then
    echo "Cannot find ZKIT directory: $ZKIT"
    exit 1
fi

## load functions
source ${ZKIT}/bash/functions/zkit_core
require utils

# bash<4.2 cannot declare global in function
source ${ZKIT}/bash/functions/colors.zkit

## default setups
if [[ -z ${ZKIT_SETUPS[*]} ]]; then
    if __zkit_have zsh; then
	ZKIT_SETUPS=( bash zsh )
    else
	ZKIT_SETUPS=( bash )
    fi
fi

## update zkit
function githash () {
    local my=$(basename $1)
    (cd $ZKIT && git show --quiet --pretty="format:%H" ${ZKIT}/bin/${my})
}

my_hash=$(githash $0)
if $ZKIT_AUTOUPDATE && [[ -d ${ZKIT}/.git ]]; then
    __zkit_msg "++ Pulling ZKIT" 
    ( cd ${ZKIT} && __zkit_run git pull )
    chmod -R og-rwx ${ZKIT}
    if [[ $my_hash != $(githash $0) ]]; then
	echo "zkit_setup Updated. Restart"
	exec ${ZKIT}/bin/zkit_setup
    fi
fi

## make var directories
mkdir -p ${ZKIT}/var/{cache,tmp}

## pull private settings
if [[ -d ${ZKIT_PRIVATE}/.git ]]; then
    __zkit_msg "++ Updating private"
    ( cd ${ZKIT_PRIVATE} && __zkit_run git pull )
elif [[ -n ${ZKIT_PRIVATE_REPO} ]]; then
    __zkit_msg "++ Downloading private from ${ZKIT_PRIVATE_REPO}"
    __zkit_run git clone ${ZKIT_PRIVATE_REPO} ${ZKIT_PRIVATE} || exit 1
else
    __zkit_msg "++ Maked " ${ZKIT_PRIVATE}
    mkdir -p ${ZKIT_PRIVATE}
fi
chmod -R og-rwx ${ZKIT_PRIVATE}

## get host setup params 
d=${ZKIT_PRIVATE}/intrinsics
hostname=$(hostname)
host=${d}/host-${hostname}
if [[ ! -r ${host} ]]; then
    host=${d}/host-${hostname%%.*}
    if [[ ! -r ${host} ]]; then
	host=
    fi
fi
if [[ -n ${host} ]]; then
    __zkit_msg "++ Applying host intrinsic:" ${host}
    source ${host}
fi

## run setup scripts
for name in "${ZKIT_SETUPS[@]}" "${ZKIT_SETUPS_LOCAL[@]}"; do
    if [[ -n $name ]]; then
	both=false
	ok=false
	if [[ $name == +* ]]; then
	    name=${name:1}
	    both=true
	fi
	private_setup=${ZKIT_PRIVATE}/setup.d/${name}.sh
	default_setup=${ZKIT}/setup.d/${name}.sh

	if [[ ! -r $private_setup ]]; then
	    private_setup=
	fi
	if [[ ( -z $private_setup || $both == true ) && -r $default_setup ]]; then
    	    __zkit_msg "** Loading setup         [ ${name} ]"
	    source $default_setup
	    ok=true
	fi
	if [[ -n $private_setup ]]; then
    	    __zkit_msg "** Loading private setup [ ${name} ]"
	    source $private_setup
	    ok=true
	fi
	if ! $ok; then
    	    __zkit_err "!! Cannot find setup     [ ${name} ]"
	fi
    fi
done

#EOF
