#!/usr/bin/env zsh

LANG=C

shunit2=$ZDOTDIR/lib/shunit2-2.1.6/src/shunit2
setopt shwordsplit

autoload -Uz template

function test_simple_var () {
    local X=xxx
    result=$(echo '{= $X =}' | template )

    ${_ASSERT_EQUALS_} 'simple_expr' "xxx" "$result"
}

function test_ifthen () {
    local X=xxx

    result=$(echo '{% if [ "$X" = "xxx" ]; then %} Y {% else %} N {% fi %}' | template )
    ${_ASSERT_EQUALS_} 'ifthen' " Y " "$result"

    result=$(echo '{% if [ "$X" = "yyy" ]; then %} Y {% else %} N {% fi %}' | template )
    ${_ASSERT_EQUALS_} 'ifthen' " N " "$result"
}

SHUNIT_PARENT=$0
. $shunit2
