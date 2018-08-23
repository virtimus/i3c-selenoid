#!/bin/bash
tdir=$1
if [ ! -e $tdir ]; then
	mkdir $tdir
fi

if [ ! -e $tdir/vendor/facebook ]; then

	cd $tdir && curl -sS https://getcomposer.org/installer | php && php composer.phar require facebook/webdriver

fi	