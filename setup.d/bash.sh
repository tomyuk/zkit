#!/usr/bin/env bash
######################################################################
## Setup Bash staff

for f in bashrc bash_profile bash_logout; do
    __zkit_install bash/dot.$f ${HOME}/.$f
done
