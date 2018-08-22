#!/bin/bash
cName=selenoid
dParams="-d \
	-p 4444:4444 \
	-v $i3cDataDir/$cName/config/:/etc/selenoid/:ro \
	-v $i3cDataDir/$cName/video/:/opt/selenoid/video/ \
	-e OVERRIDE_VIDEO_OUTPUT_DIR=`pwd`/video/"
addIParams=true
#doCommand=false

i3cAfter(){
	#docker exec i3cp sh -c "cd /servicebot-deploy/ && docker-compose up -d"
	/i exe selenoid "/installComposer.sh /i3c/data/php"
	echo "access selenoid at http://[host]:4444/jw"
}