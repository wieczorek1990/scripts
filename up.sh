#!/bin/sh
# Updates repositories.

source "${PWD}/Scripts/options.sh"

if [ "$#" -eq 1 ]
then
	if [ "$1" = '--push' ]
	then
		PUSH=1
	else
		PUSH=0
	fi
else
	PUSH=0
fi

ssh-add

for directory in Others/*
do
	cd "${directory}"
	git pull --rebase origin
	if [ $PUSH -eq 1 ]
	then
		git push --force me
	fi
	cd -
done

rustup update
