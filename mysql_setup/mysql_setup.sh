#!/bin/bash

service mysql start
mysql -u root < master/mysql_setup/setup_db.sql

# ./usr/local/hadoop/sbin/stop-all.sh
# ./usr/local/hadoop/sbin/start-all.sh

sqoop import --connect jdbc:mysql://localhost:3306/coursera --username christian --password password --table salaries --target-dir coursera --split-by id