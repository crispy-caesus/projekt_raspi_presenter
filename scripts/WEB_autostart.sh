#!/bin/bash

CMD=chromium-browser --incognito --start-fullscreen https://robosax.org/live

echo "setup autostart to WEB"
echo "======================"
echo ""

echo ""
echo "config autostart"
mkdir -p "${XDG_CONFIG_HOME}/autostart"
cp punkte.desktop "${XDG_CONFIG_HOME}/autostart"

echo ""
echo "display website"
echo "  $CMD"
$CMD

echo ""
echo "done :-)"
