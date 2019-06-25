#!/bin/bash

if [ ! -d "/var/lib/mysql/mysql" ]; then
	mysql_install_db --user=mysql --basedir=/usr --datadir=/var/lib/mysql
	mysqladmin -u root password root
fi

/usr/bin/mysqld_safe
