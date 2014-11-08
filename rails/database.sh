#!/bin/bash
pwd=`pwd`
db_name=`basename $pwd`'_development'
rake db:drop
sudo -u postgres psql -c "create database $db_name;"
rake db:migrate
rake db:seed
