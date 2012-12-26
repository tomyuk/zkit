#!/usr/bin/env bash
######################################################################
## Gnome Staff

if [[ -d ${HOME}/.config/autostart ]]; then
    # gnome autostart
    for tmpl in "${GNOME_AUTOSTART_TEMPLATES[@]}"; do
	__zkit_template ${tmpl} ${HOME}/.config/autostart/$(basename $tmpl .tmpl)
    done
fi

