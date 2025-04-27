#!/bin/bash

echo "setup autostart to PDF"
echo "======================"
echo ""

CMD="okular --presentation ${HOME}/Desktop/Presentation.pdf"

confdir=~/.config
if ! [[ -z $XDG_CONFIG_HOME ]]
 then confdir=$XDG_CONFIG_HOME
fi

echo ""
echo "config autostart"
mkdir -p "${confdir}/autostart"
rm ${confdir}/autostart/bilder.desktop ${confdir}/autostart/punkte.desktop
cp pdf.desktop "${confdir}/autostart"

echo ""
echo "display pdf"
echo "  $CMD"
$CMD

echo ""
echo "done :-)"
