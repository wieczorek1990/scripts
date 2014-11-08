#!/bin/bash
search="$1"
shift
egrep --color=always "$search|$" "${@}"
