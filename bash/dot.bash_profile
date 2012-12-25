# -*- shell-script -*-
# ${ZKIT}/bash/dot.bash_profile
# このファイルは対話型のログインシェルとして起動された場合のみ実行される

########################################
# ログインシェルは ~/.bashrc を読み込まないのでここで読み込み、必要な環境設定を行う

export ZKIT=${ZKIT=${HOME}/.zkit}
if [[ -r ${HOME}/.zkitrc ]]; then
    source ${HOME}/.zkitrc
fi
source ${ZKIT}/bash/startup.sh
