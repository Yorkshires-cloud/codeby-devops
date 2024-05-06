#!/bin/bash

#Переменные
path=/home/vboxuser/myfolder #рабочая директория
files=/home/vboxuser/myfolder/* #файлы в рабочей директории
newpermissions="664" #новые права доступа

#проверка наличия директории и вывод количества файлов
if [ -d "$path" ]; then
        cd $path || exit
        ls | wc -l
fi

#поиск файла с правами 777 и изменение прав на 664
for filename in $files
do
        if [ -r "$filename" ] && [ -w "$filename" ] && [ -x "$filename" ]
        then
                chmod $newpermissions "$filename"
        fi
done

#удаление пустых файлов по их размеру
find ./ -size 0 -delete

#удаление первых строк в каждом файле рабочей директории
for f in $files
do
        if [ -s "$f" ]
        then
                sed -i 1d "$f"
        fi
done