#!/usr/bin/env zsh
######################################################################
# GPG Agent の設定

# ssh-support はマルチセッションで上手く動作しないので使わない。
# 基本的には gnome 環境で gnome keyring が稼働している環境もしくは
# ssh agent forwarding で、すでに SSH_AUTH_SOCK が設定されている前提。

# 外部ssh serverホストには private key を置かないことが前提

# gpg_agent_options="--debug-level basic"

# ログインシェルの場合のみ
if $zkit_login_shell; then
    if [[ -z "$GNOME_KEYRING_CONTROL" && -z "$GPG_AGENT_INFO" ]]; then
        # gpg-agent がすでに起動済みであれば gpg_agent_info_file は上書きされ
        # ないので、起動済みか否かに関わらずこの内容で環境を設定する。
	gpg_agent_info_file="${HOME}/.gpg-agent-info"

	# 端末からのログイン時のみ GPG_TTY を設定する
	GPG_TTY=$(tty)
	if [[ $? == 0 ]]; then
	    export GPG_TTY
	else
	    unset GPG_TTY
	fi
	/usr/bin/gpg-agent --daemon \
	    ${gpg_agent_options} \
	    --log-file ~/.gnupg/gpg-agent.log \
	    --write-env-file ${gpg_agent_info_file} >/dev/null 2>&1
	if [ -f ${gpg_agent_info_file} ]; then
	    eval $(cat ${gpg_agent_info_file})
	    eval $(cut -d= -f 1 <${gpg_agent_info_file} | xargs echo export)
	    export GPG_AGENT_INFO
	fi
	unset gpg_agent_info_file
    fi

    function kill_gpg_agent () {
	if [[ -n "$GPG_AGENT_INFO" ]]; then
	    x=(${GPG_AGENT_INFO//:/ })
	    if (( x[2] != 0 )); then
		kill ${x[2]}
		unset GPG_AGENT_INFO
		rm ${HOME}/.gpg-agent-info
		echo Killed
	    else
		echo Ignored
	    fi
	fi
    }

    # もし ssh-agent が稼働していなければ起動する
    if [[ -z "$SSH_AUTH_SOCK" ]]; then
	eval $(ssh-agent -s)
	if [[ -z "$DISPLAY" ]]; then
	    SSH_ASKPASS=
	fi
    fi

fi
