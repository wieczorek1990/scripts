#!/usr/bin/env fish
# Fetches news.

cd (status dirname)/..

ssh-add

for directory in ./Others/*
    echo -e "Processing directory:\t$directory"
    cd $directory
    git pull
    cd -
end
