#!/bin/bash
read -d '' backup << EOF
Dokumenty
Dropbox
Obrazy
Pobrane
Pulpit
Skrypty
Szablony
.astylerc
.bash*
.dropbox
.dropbox-dist
.gvimrc
.octaverc
.profile
.RubyMine60
.rvm
.Skype
.ssh
.vim
.vimrc*
EOF

tmp=/tmp/backup
shopt -s dotglob
rm -rf $tmp
mkdir $tmp
cd ~
mv $backup $tmp
sudo rm -rf *
mv $tmp/* .
rm -rf $tmp
