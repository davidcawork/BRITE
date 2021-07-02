#!/bin/bash

FILES=$(curl --silent http://code.nsnam.org/BRITE/file/tip/conf_files | grep '/BRITE/file/tip/conf_files' | cut -d'"' -f2 | grep --color -e '^.*\.' | cut -d'/' -f6)

for file in ${FILES[@]}; do
    echo $file
    curl --silent http://code.nsnam.org/BRITE/raw-file/tip/conf_files/${file} > ${file}
done
