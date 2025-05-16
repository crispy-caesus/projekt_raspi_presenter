#!/bin/bash

echo "config autostart of image presentation"
echo "======================"
echo ""


confdir=~/.config
if [[ -n "$XDG_CONFIG_HOME" ]]; then
    confdir="$XDG_CONFIG_HOME"
fi

echo ""
echo "config autostart"
mkdir -p "${confdir}/autostart"
rm "${confdir}/autostart/PDF.desktop" "${confdir}/autostart/WEB.desktop"
cp ~/projekt_raspi_presenter/scripts/IMG.desktop "${confdir}/autostart"

bash ~/projekt_raspi_presenter/scripts/IMG_run.sh

# start image presentation
echo ""
echo "done :-)"
