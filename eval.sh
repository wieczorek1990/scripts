#!/bin/bash
octave --quiet --eval "$*; disp(ans);" | sed 's/^\ //'
