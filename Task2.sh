#!/bin/bash

read -p "Введите путь к основной папке: " BaseDirectory 
read -p "Введите префикс для имени папок: " FolderPrefix
read -p "Введите количество папок: " FolderNumber 
read -p "Введите количество подпапок в каждой папке: " SubfolderNumber
read -p "Введите количество файлов в каждой подпаnке: " FileNumber

for ((i=1; i<=FolderNumber; i++)) do
FolderName="S{FolderPrefix) $i" FolderPath="$BaseDirectory/$FolderName"

mkdir -p "$FolderPath"

for ((j=1; j<=SubfolderNumber; j++)) do
SubfolderName="subfolder$j" SubfolderPath="$FolderPath/$Subfolder Name"

mkdir -p "$SubfolderPath"

for ((k=l; k<=FileNumber; k++))
do
FileName="filesk.txt"
FilePath="$SubfolderPath/$FileName"
#Создание пустого файла
touch "$FilePath"
done
done
done