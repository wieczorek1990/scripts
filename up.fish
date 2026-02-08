#!/usr/bin/env fish
# Fetches news.

cd (status dirname)/..

echo -e "Hello," (whoami)"."
ssh-add

for directory in ./Others/*
    cd $directory
    set branch (git branch --show-current)
    echo -e "Processing...\ndirectory:\t$directory\nbranch:\t$branch"
    git pull
    cd -
end
