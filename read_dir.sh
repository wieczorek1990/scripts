#!/bin/bash
di=${1:-.}
find -type f ! -iwholename '*.git*' -exec grep -Il "$dir" {} \; | parallel -X tail -n +1 {} | egrep --color=always '==>.*<==|^' | less -r
