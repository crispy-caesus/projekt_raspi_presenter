#!/bin/bash

echo "setup autostart to PDF"
echo "======================"
echo ""


confdir=~/.config
if [[ -n "$XDG_CONFIG_HOME" ]]; then
    confdir="$XDG_CONFIG_HOME"
fi

echo ""
echo "config autostart"
mkdir -p "${confdir}/autostart"
rm ${confdir}/autostart/IMG.desktop ${confdir}/autostart/WEB.desktop
cp ~/projekt_rapsi_presenter/scripts/PDF.desktop "${confdir}/autostart"

bash ~/projekt_rapsi_presenter/scripts/PDF_run.sh

echo ""
echo "done :-)"
