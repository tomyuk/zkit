#
# setup.d/git.sh
#

if [[ $ZSH_VERSION != 4.* ]]; then
    __zkit_template templates/gitconfig.tmpl ${HOME}/.gitconfig 600
elif [[ -s ${ZKIT_PRIVATE}/share/gitconfig ]]; then
    install -m 600 ${ZKIT_PRIVATE}/share/gitconfig ${HOME}/.gitconfig
fi
