#!/bin/bash

echo "config autostart of PDF presentation"
echo "======================"
echo ""


confdir=~/.config
if [[ -n "$XDG_CONFIG_HOME" ]]; then
    confdir="$XDG_CONFIG_HOME"
fi

echo ""
echo "config autostart"
mkdir -p "${confdir}/autostart"
rm "${confdir}/autostart/IMG.desktop" "${confdir}/autostart/WEB.desktop"
cp ~/projekt_raspi_presenter/scripts/PDF.desktop "${confdir}/autostart"

bash ~/projekt_raspi_presenter/scripts/PDF_run.sh

# start pdf presentation
echo ""
echo "done :-)"
