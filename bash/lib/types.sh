# -*- shell-script -*-

function isnumber () {
    # we do not handle [base#]n format here
    [[ "$1" =~ ^[-+0-9][0-9]*$ || "$1" =~ ^[-+]?0[xX][0-9a-fA-F]*$ ]]
}

function isalpha () {
    [[ "$1" =~ ^[a-zA-Z]+$ ]]
}

function isalnum () {
    [[ "$1" =~ ^[0-9a-zA-Z]+$ ]]
}
