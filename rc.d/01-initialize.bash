#!/usr/bin/env bash
#
# 基本的な初期化
#

### for Zkit
if shopt -q login_shell; then
    zkit_login_shell=true
else
    zkit_login_shell=false
fi

######################################################################
# PATH 追加
export PATH

PATH=/sbin:/bin:/usr/sbin:/usr/bin
if [[ -f /etc/redhat-release ]]; then
    if (( $(head -1 /etc/redhat-release | awk '{print $3}') >= 18 )); then
	PATH=/usr/sbin:/usr/bin
    fi
fi
pathmunge /usr/local/bin
pathmunge /usr/local/sbin

pathmunge "${__zkit_path[@]}"
