#!/bin/bash

#Переменные
path=/home/vboxuser/myfolder #рабочая директория
#имена создаваемых файлов
filename1=1
filename2=2
filename3=3
filename4=4
filename5=5

#проверка на наличие рабочей директории. Если имеется - удалить
if [ -d "$path" ]; then
        rm -r $path
fi

#создание директории и переход в нее
mkdir $path
cd $path || exit

#создание первого файла с приветствием и текущим временем
echo "Hello!!!" > $filename1
date >> $filename1

#создание второго файла и изменение прав доступа
touch $filename2
chmod 777 $filename2

#создание третьего файла и запись в него случайной строки из 20 символов
touch $filename3
for i in {1..20} ; do
        cat /dev/urandom | tr -dc 'a-zA-Z0-9' | fold -w 20 | head -n 1 >> $filename3
done

#создание файлов 4 и 5 пустыми
touch $filename4
touch $filename5