#!/bin/sh
# Updates repositories.

set -euox pipefail

ssh-add
for directory in Others/*
do
	cd "${directory}"
	git pull --rebase origin
	git push --force me
	cd -
done
