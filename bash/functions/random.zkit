# -*- shell-script -*-

#++ random_hex [ count ]
#
#   Generates a random string of length ``count`` hexadecimal octets.
#   If not specified ``count`` is 20 by default.
#--
function random_hex () {
    local -i i=$1
    while [ $(( i-- )) -gt 0 ]; do
        printf "%x" $(( RANDOM % 16 ))
    done
}

function random_string () {
    local -i i=$1
    while [ $(( i-- )) -gt 0 ]; do
	printf ${2:$(( RANDOM % ${#2} )):1}
    done
}
