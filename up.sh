#!/bin/sh
# Updates repositories.

set -euox pipefail

for directory in Others/*
do
	cd "${directory}"
	git pull --rebase origin
	git push --force me
	cd -
done
