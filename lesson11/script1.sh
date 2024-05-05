#!/bin/bash

path=/home/vboxuser/myfolder
chars=ABCDEFGHIJKLMNOPQRSTUVWXYZ

if [ -d "$path" ]; then
        rm -r $path
fi

mkdir $path
cd $path

echo "Hello!!!" > 1
date >> 1

touch 2
chmod 777 2

touch 3
for i in {1..20} ; do
        cat /dev/urandom | tr -dc 'a-zA-Z0-9' | fold -w 20 | head -n 1 >> 3
done

touch 4

touch 5