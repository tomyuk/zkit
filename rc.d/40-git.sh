#
# 40-git
#

if [[ -r $ZDOTDIR/lib/git-completion.bash ]]; then
    . $ZDOTDIR/lib/git-completion.bash
fi


######################################################################

# # vcs_info
# autoload vcs_info

# zstyle ":vcs_info:*" enable git			# gitのみ有効にする
# zstyle ":vcs_info:git:*" check-for-changes true			# commitしていない変更をチェックする
# zstyle ":vcs_info:git:*" formats "%c%u[%b:%r]"			# 変更情報とリポジトリ情報を表示
# zstyle ":vcs_info:git:*" actionformats "%c%u<%a>[%b:%r]"	# コンフリクトなどの情報を表示
# zstyle ":vcs_info:git:*" unstagedstr "*"			# addしていない変更がある
# zstyle ":vcs_info:git:*" stagedstr "+"				# commitしていないstageがある

# # git：まだpushしていないcommitあるかチェックする
# function my_git_info_push () {
#     if [[ -n "$(git remote 2>/dev/null)" ]]; then
# 	local head="$(git rev-parse HEAD)"
# 	local remote
# 	for remote in $(git rev-parse --remotes) ; do
# 	    if [ "$head" = "$remote" ]; then return 0 ; fi
# 	done
# 	# pushしていないcommitがあることを示す文字列
# 	# echo "<P>"
#     fi
# }

# # git：stashに退避したものがあるかチェックする
# my_git_info_stash () {
#     if [[ -n "$(git stash list 2>/dev/null)" ]]; then
# 	# stashがあることを示す文字列
# 	# echo "{s}"
# 	:
#     fi
# }

# # vcs_infoの出力に独自の出力を付加する
# my_vcs_info () {
# 	vcs_info
# 	echo "$(my_git_info_stash)$(my_git_info_push)$vcs_info_msg_0_"
# }


# ######################################################################

local csi=$'\e['

if [[ -r $ZDOTDIR/lib/git-prompt.sh ]]; then

    . $ZDOTDIR/lib/git-prompt.sh
    GIT_PS1_SHOWDIRTYSTATE=yes
    GIT_PS1_SHOWSTASHSTATE=yes
    GIT_PS1_SHOWUNTRACKEDFILES=yes
    GIT_PS1_SHOWUPSTREAM=auto

    if zstyle -t ':zkit:' rprompt; then
	RPROMPT="%{${csi}48;5;224m%}\$(__git_ps1 \"(%s)\")%{${csi}m%}$RPROMPT"
    else
	PS1="%{${csi}48;5;224m%}\$(__git_ps1 \"(%s)\")%{${csi}m%}$PS1"
    fi
fi
