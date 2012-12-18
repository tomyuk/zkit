#
# 90-site.sh
#

siterc=${HOME}/.local/private/zsh/zshrc-$(hostname)
if [[ -r $siterc ]]; then
    source $siterc
fi
