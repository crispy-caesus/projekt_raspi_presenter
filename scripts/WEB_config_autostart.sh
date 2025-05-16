#!/bin/bash

echo "setup autostart to WEB"
echo "======================"
echo ""

confdir=~/.config
if [[ -n "$XDG_CONFIG_HOME" ]]; then
    confdir="$XDG_CONFIG_HOME"
fi

echo ""
echo "config autostart"
mkdir -p "${confdir}/autostart"
rm ${confdir}/autostart/PDF.desktop ${confdir}/autostart/IMG.desktop
cp ~/projekt_raspi_presenter/scripts/WEB.desktop "${confdir}/autostart"

bash ~/projekt_raspi_presenter/scripts/WEB_run.sh

echo ""
echo "done :-)"
