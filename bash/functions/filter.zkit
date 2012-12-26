# -*- shell-script -*-
#

function filter_lstrip () {
    local line
    while read -r line ; do
        echo "${line#${line%%[![:space:]]*}}"
    done
}

function filter_rstrip () {
    local line
    while read -r line ; do
        echo "${line%${line##*[![:space:]]}}"
    done
}

function filter_strip () {
    local line
    while read -r line ; do
        echo $line
    done
}

function filter_upper () {
    local __ifs=$IFS line
    IFS=
    while read -r line; do
	echo "${line^^?}"
    done
    IFS=$__ifs
}

function filter_lower () {
    local __ifs=$IFS line
    IFS=
    while read -r line; do
	echo "${line,,?}"
    done
    IFS=$__ifs
}
