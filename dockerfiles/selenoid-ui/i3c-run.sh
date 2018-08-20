#!/bin/bash
#--name selenoid-ui
#cName - optional

dParams="-d \
	--link selenoid \
	-p 8080:8080"
	
rCommand="--selenoid-uri=http://selenoid:4444"
#doCommand=false
i3cAfter(){
	#docker exec i3cp sh -c "cd /servicebot-deploy/ && docker-compose up -d"
	echo "access selenoid-ui at http://[host]:8080"
}