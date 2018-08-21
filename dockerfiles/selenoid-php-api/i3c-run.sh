#!/bin/bash


dParams="-p 8980:80 --link selenoid:selenoid\
		-v $i3cDataDir/$cName/www:/var/www/html"

		
i3cAfter(){

/i exsh selenoid-php-api "/prepareComposer.sh"	
	
}	