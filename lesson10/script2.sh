#!/bin/bash

path=/home/vboxuser/myfolder
files=/home/vboxuser/myfolder/*

if [ -d "$path" ]; then
        cd $path
        ls | wc -l
fi

for filename in $files
do
        if [ -r $filename ]
        then
                if [ -w "$filename" ]
                then
                        if [ -x "$filename" ]
                        then
                                chmod 664 "$filename"
                        fi
                fi
        fi
done

find ./ -size 0 -delete

for f in $files
do
        if [ -s $f ]
        then
                sed -i 1d $f
        fi
done