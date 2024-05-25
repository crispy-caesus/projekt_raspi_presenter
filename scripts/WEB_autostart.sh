#!/bin/bash

echo "setup autostart to WEB"
echo "======================"
echo ""

CMD="chromium-browser --incognito --start-fullscreen https://robosax.org/live"

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
