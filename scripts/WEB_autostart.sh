#!/bin/bash

CMD="chromium-browser --incognito --start-fullscreen https://robosax.org/live"

confdir=~/.config
if ! [[ -z $XDG_CONFIG_HOME ]]
 then $confdir=$XDG_CONFIG_HOME
fi

echo "setup autostart to WEB"
echo "======================"
echo ""

echo ""
echo "config autostart"
mkdir -p "${confdir}/autostart"
cp punkte.desktop "${confdir}/autostart"

echo ""
echo "display website"
echo "  $CMD"
$CMD

echo ""
echo "done :-)"
