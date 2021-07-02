#!/bin/bash

FILES=$(curl --silent http://code.nsnam.org/BRITE/file/tip/conf_files/sample_graphs | grep '/BRITE/file/tip/conf_files/sample_graphs' | cut -d'"' -f2 | grep --color -e '^.*\.' | cut -d'/' -f7)

for file in ${FILES[@]}; do
    echo $file
    curl --silent http://code.nsnam.org/BRITE/raw-file/tip/conf_files/sample_graphs/${file} > ${file}
done
