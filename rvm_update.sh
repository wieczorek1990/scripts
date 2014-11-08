#!/bin/bash
#rvm get head
#latest_stable=`rvm list known | sed -r 's/\[|\]//g' | grep '^ruby' | grep -v 'head' | tail -n 1`
#rvm install "$latest_stable"
#rvm gemset update
rm -rf ~/.rvm
\curl -L https://get.rvm.io | bash -s stable --ruby
