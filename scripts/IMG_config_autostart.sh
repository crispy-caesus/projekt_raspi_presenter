#!/bin/bash

echo "setup autostart to IMG"
echo "======================"
echo ""


confdir=~/.config
if [[ -n "$XDG_CONFIG_HOME" ]]; then
    confdir="$XDG_CONFIG_HOME"
fi

echo ""
echo "config autostart"
mkdir -p "${confdir}/autostart"
rm ${confdir}/autostart/PDF.desktop ${confdir}/autostart/WEB.desktop
cp ~/projekt_raspi_presenter/scripts/IMG.desktop "${confdir}/autostart"

bash ~/projekt_raspi_presenter/scripts/IMG_run.sh

echo ""
echo "done :-)"
