#!/bin/bash

echo "setup autostart to IMG"
echo "======================"
echo ""

CMD="okular --presentation $(xdg-user-dir PICTURES)/"

confdir=~/.config
if ! [[ -z $XDG_CONFIG_HOME ]]
 then $confdir=$XDG_CONFIG_HOME
fi

echo ""
echo "config autostart"
mkdir -p "${confdir}/autostart"
rm ${confdir}/autostart/pdf.desktop ${confdir}/autostart/punkte.desktop
cp bilder.desktop "${confdir}/autostart"

echo ""
echo "display images"
echo "  $CMD"
$CMD

echo ""
echo "done :-)"
