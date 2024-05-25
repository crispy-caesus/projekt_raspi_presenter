#!/bin/bash

echo "setup autostart to PDF"
echo "======================"
echo ""

CMD="okular --presentation '${HOME}/Dokumente/Presentation.pdf'"

echo ""
echo "config autostart"
mkdir -p "${HOME}/.config/lxsession/LXDE-pi"
cp /etc/xdg/lxsession/LXDE-pi/autostart "${HOME}/.config/lxsession/LXDE-pi/"
echo "$CMD" >> "${HOME}/.config/lxsession/LXDE-pi/autostart"

echo ""
echo "display pdf"
echo "  $CMD"
$CMD

echo ""
echo "done :-)"
