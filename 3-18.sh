#!/bin/bash

prefix=$PREFIX
num_dirs=$NUM_DIRS
target_dir=$TARGET_DIR

if [ -z "$prefix" ] || [ -z "$num_dirs" ] || [ -z "$target_dir" ];
then
 echo "Не все переменные окружения заданы" 
 exit 1
fi

if [ ! -d "$target_dir" ];
then
 echo "Каталога $target_dir не существует"
 exit 1
fi
 
for ((i = 1; i <= num_dirs; ++i));
do
 dir_name="${prefix}_${i}"
 mkdir "$target_dir/$dir_name"
done

echo "В каталоге $target_dir создано $num_dirs каталогов с префиксом $prefix"