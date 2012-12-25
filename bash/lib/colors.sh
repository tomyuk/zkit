#

function __zkit_color () {
    typeset -Ag color=()
    typeset -Ag fg fg_bold fg_no_bold
    typeset -Ag bg bg_bold bg_no_bold
    local lc=$'\e[' rc=m c

    color[none]=0
    color[bold]=1
    color[faint]=2
    color[standout]=3
    color[underline]=4
    color[blink]=5
    color[revers]=7
    color[conceal]=8

    color[normal]=22
    color[no-standout]=23
    color[no-underline]=24
    color[no-blink]=25
    color[no-reverse]=27
    color[no-conceal]=28

    color[black]=30
    color[red]=31
    color[green]=32
    color[yellow]=33
    color[blue]=34
    color[magenta]=35
    color[cyan]=36
    color[white]=37
    color[default]=39

    color[bg-black]=40
    color[bg-red]=41
    color[bg-green]=42
    color[bg-yellow]=43
    color[bg-blue]=44
    color[bg-magenta]=45
    color[bg-cyan]=46
    color[bg-white]=47
    color[bg-default]=49

    for k in ${!color[@]}; do
	if [[ ${color[$k]} == 3? ]]; then
	    color[fg-$k]=${color[$k]}
	fi
    done

    reset_color="$lc${color[none]}$rc"
    bold_color="$lc${color[bold]}$rc"

    for k in ${!color[@]}; do
	if [[ $k == fg-* ]]; then
	    c=${k#fg-}
	    fg[$c]="$lc${color[$k]}$rc"
	    fg_bold[$c]="$lc${color[bold]};${color[$k]}$rc"
	    fg_no_bold[$c]="$lc${color[normal]};${color[$k]}$rc"
	elif [[ $k == bg-* ]]; then
	    c=${k#bg-}
	    bg[$c]="$lc${color[$k]}$rc"
	    bg_bold[$c]="$lc${color[bold]};${color[$k]}$rc"
	    bg_no_bold[$c]="$lc${color[normal]};${color[$k]}$rc"
	fi
    done
}

__zkit_color
unset __zkit_color
