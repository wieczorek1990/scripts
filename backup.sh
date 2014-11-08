#!/bin/bash
DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
from=/media/data
to=/media/luke/mypassport
exclude=$DIR/exclude
rsync -a --delete --info=progress2 --exclude-from "$exclude" "$from/" "$to"
