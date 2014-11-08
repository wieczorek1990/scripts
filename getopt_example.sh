#!/bin/bash
as=
set -- `getopt a: $*`
for arg
do
  case "$arg"
  in
    -a) as="$2"; shift; shift;;
    --) shift; break;;
  esac
done
