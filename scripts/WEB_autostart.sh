#!/bin/bash

echo "setup autostart to WEB"
echo "======================"
echo ""

CMD="chromium-browser --incognito --start-fullscreen https://robosax.de/live"

confdir=~/.config
if ! [[ -z $XDG_CONFIG_HOME ]]
 then confdir=$XDG_CONFIG_HOME
fi

echo ""
echo "config autostart"
mkdir -p "${confdir}/autostart"
rm ${confdir}/autostart/pdf.desktop ${confdir}/autostart/bilder.desktop
cp punkte.desktop "${confdir}/autostart"

echo ""
echo "display website"
echo "  $CMD"
$CMD

echo ""
echo "done :-)"
