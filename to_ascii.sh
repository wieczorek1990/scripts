#!/bin/bash
cat $* | iconv -f UTF-8 -t US-ASCII//TRANSLIT
