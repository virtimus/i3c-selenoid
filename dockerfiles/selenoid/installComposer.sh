#!/bin/bash
tdir=$1
if [ ! -e $tdir ]; then
	mkdir $tdir
fi

cd $tdir && curl -sS https://getcomposer.org/installer | php && php composer.phar require facebook/webdriver