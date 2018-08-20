#!/bin/bash
docker pull selenoid/vnc:chrome_68.0

if [ ! -f $i3cDataDir/$cName/config/browsers.json ]; then
    echo "browsers.json file not found - copying default from res..."
	CDIR=$i3cScriptDir
    cp $CDIR/res/browsers.json $i3cDataDir/$cName/config/browsers.json
fi