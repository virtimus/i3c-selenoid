#!/bin/bash

cd /data && curl -sS https://getcomposer.org/installer | php

su php && cd /data && php composer.phar require facebook/webdriver