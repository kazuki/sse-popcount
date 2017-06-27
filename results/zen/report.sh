#!/bin/bash

name=ryzen-7-1800X-gcc7.1.0-avx2

python2 ../../scripts/report.py \
    --csv="$name.csv" \
    --output="$name.rst"

name=ryzen-7-1800X-clang4.0.0-avx2

python2 ../../scripts/report.py \
    --csv="$name.csv" \
    --output="$name.rst"

if type rst2html.py > /dev/null
then
    for src in *.rst
    do
        dst=`basename $src .rst`.html
        rst2html.py "$src" > "$dst"
    done
fi
