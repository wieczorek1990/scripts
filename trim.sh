#!/bin/bash
echo "$@" | sed -e 's/^\s*//;s/\s*$//'
