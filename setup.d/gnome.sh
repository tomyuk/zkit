#!/usr/bin/env bash
######################################################################
## Gnome Staff

if [[ -d ${HOME}/.config/autostart ]]; then
    # gnome autostart
    rm -f ${HOME}/.config/autostart/mystartup.desktop
    ln -s ${PRIVATE}/share/autostart/mystartup.desktop ${HOME}/.config/autostart/mystartup.desktop
fi

