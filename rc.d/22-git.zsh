#!/usr/bin/env zsh
#
# git
#

if [[ -n $PS1 ]]; then

    # git prompt
    if ! zstyle -t ':zkit:' vcs_info; then
	if [[ -r $ZKIT/lib/git-prompt.sh ]]; then
	    source $ZKIT/lib/git-prompt.sh
	    GIT_PS1_SHOWDIRTYSTATE=yes
	    GIT_PS1_SHOWSTASHSTATE=yes
	    GIT_PS1_SHOWUNTRACKEDFILES=yes
	    GIT_PS1_SHOWUPSTREAM=auto

	    GIT_RPROMPT="%{${csi}48;5;224m%}\$(__git_ps1 \"(%s)\")%{${csi}m%}"
	fi
    else
	# vcs_info
	autoload -Uz vcs_info

	zstyle ":vcs_info:*" enable git	# gitのみ有効にする
	zstyle ":vcs_info:git:*" check-for-changes true		# commitしていない変更をチェックする
	zstyle ":vcs_info:git:*" formats "%b%u%c"			# 変更情報とリポジトリ情報を表示
	zstyle ":vcs_info:git:*" actionformats "%b%u%c<%a>"		# コンフリクトなどの情報を表示
	zstyle ":vcs_info:git:*" stagedstr "+"			# commitしていないstageがある(%c)
	zstyle ":vcs_info:git:*" unstagedstr "*"			# addしていない変更がある(%u)

	# git：まだpushしていないcommitあるかチェックする
	function __git_info_push () {
	    if [[ -n "$(git remote 2>/dev/null)" ]]; then
		local head="$(git rev-parse HEAD)"
		local remote
		for remote in $(git rev-parse --remotes) ; do
		    if [ "$head" = "$remote" ]; then return 0 ; fi
		done
		# pushしていないcommitがあることを示す文字列
		echo "^"
	    fi
	}

	# git：stashに退避したものがあるかチェックする
	function __git_info_stash () {
	    if [[ -n "$(git stash list 2>/dev/null)" ]]; then
		# stashがあることを示す文字列
		echo "\$"
	    fi
	}

	# vcs_infoの出力に独自の出力を付加する
	function __vcs_info () {
	    LANG=en_US.UTF-8 vcs_info
	    if [[ -n "${vcs_info_msg_0_}" ]]; then
		echo "(${vcs_info_msg_0_}$(__git_info_stash)$(__git_info_push))"
	    fi
	}

	GIT_RPROMPT="%{${csi}48;5;224m%}\$(__vcs_info \"(%s)\")%{${csi}m%}"
    fi
fi
