#!/bin/bash

sed -i 's/root/'$MYSQL_ENV_MYSQL_USER'/g' /var/www/html/core/controller/Database.php
sed -i 's/pass=""/pass="'$MYSQL_ENV_MYSQL_PASSWORD'"/g' /var/www/html/core/controller/Database.php
sed -i 's/localhost/'$MYSQL_PORT_3306_TCP_ADDR'/g' /var/www/html/core/controller/Database.php

apache2ctl -D FOREGROUND

