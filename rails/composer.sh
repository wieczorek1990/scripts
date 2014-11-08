#!/bin/bash
if [ $# -ne 1 ]
then
  echo 'Wrong number of params'
  exit
fi
rails new "$1" -m https://raw.github.com/RailsApps/rails-composer/master/composer.rb
