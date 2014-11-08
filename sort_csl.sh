#!/bin/bash
echo `cat` | sed 's/, /\n/g' | sort | awk 1 ORS=', ' | sed 's/..$//'; echo
