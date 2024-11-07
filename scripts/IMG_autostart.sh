#!/bin/bash

echo "setup autostart to IMG"
echo "======================"
echo ""

CMD="okular --presentation ${HOME}/Bilder/"

echo ""
echo "config autostart"
mkdir -p "${HOME}/.config/lxsession/LXDE-pi"
cp /etc/xdg/lxsession/LXDE-pi/autostart "${HOME}/.config/lxsession/LXDE-pi/"
echo "$CMD" >> "${HOME}/.config/lxsession/LXDE-pi/autostart"

echo ""
echo "display images"
echo "  $CMD"
$CMD

echo ""
echo "done :-)"
