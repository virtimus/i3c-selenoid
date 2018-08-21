#!/bin/bash


dParams="-p 8980:80 --link selenoid:selenoid\
		-v $i3cDataDir/$cName/www:/var/www/html"

		
i3cAfter(){

/i exsh selenoid-php-api "cd /data && curl -sS https://getcomposer.org/installer | php"	
/i exsh selenoid-php-api "su php && cd /data && php composer.phar require facebook/webdriver"	

	
}	