#!/bin/bash
cName=selenoid
dParams="-d \
	-p 4444:4444 \
	-v /var/run/docker.sock:/var/run/docker.sock \
	-v $i3cDataDir/$cName/config/:/etc/selenoid/:ro \
	-v $i3cDataDir/$cName/video/:/opt/selenoid/video/ \
	-e OVERRIDE_VIDEO_OUTPUT_DIR=`pwd`/video/"

#doCommand=false

i3cAfter(){
	#docker exec i3cp sh -c "cd /servicebot-deploy/ && docker-compose up -d"
	echo "access selenoid at http://[host]:4444/jw"
}