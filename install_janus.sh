#!/bin/bash
sudo apt-get install curl git vim-gnome
\curl -sSL https://get.rvm.io | bash -s stable --ruby
source /home/luke/.rvm/scripts/rvm
curl -Lo- https://bit.ly/janus-bootstrap | bash
