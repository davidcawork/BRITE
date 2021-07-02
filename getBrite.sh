#!/bin/bash

FILES=$(curl --silent http://code.nsnam.org/BRITE/file/tip | grep '/BRITE/file/tip/' | cut -d'"' -f2 | grep --color -e '^.*\.' | cut -d'/' -f5)
FILES=(${FILES[@]} README seed_file last_seed_file)
mkdir Models conf_files

for file in ${FILES[@]}; do
    echo $file
    curl --silent http://code.nsnam.org/BRITE/raw-file/tip/${file} > ${file}
done

