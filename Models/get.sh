#!/bin/bash

FILES=$(curl --silent http://code.nsnam.org/BRITE/file/tip/Models | grep '/BRITE/file/tip/Models' | cut -d'"' -f2 | grep --color -e '^.*\.' | cut -d'/' -f6)

for file in ${FILES[@]}; do
    echo $file
    curl --silent http://code.nsnam.org/BRITE/raw-file/tip/Models/${file} > ${file}
done
