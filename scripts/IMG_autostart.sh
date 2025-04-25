#!/bin/bash

echo "setup autostart to IMG"
echo "======================"
echo ""

CMD="okular --presentation $(xdg-user-dir PICTURES)/Bilder/"

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
