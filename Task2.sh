#!/bin/bash

read -p "Enter  the path to the main folder: " MainFolder
read -p "Enter the base name of folder: " BaseName
read -p "Enter the number of folder: " NumFolder
read -p "Enter the number of subfolder: " NumSubfolder
read -p "Enter the number of file: " NumFile

mkdir "$MainFolder/$BaseName"

cd "$MainFolder/$BaseName"

for ((i=1; i<=NumFolder; i++)) 
do

#$Folder = "$BaseName$i"

mkdir $i

cd $i

for ((j=1; j<=NumSubfolder; j++)) 
do
SubfolderName="subfolder$j"

mkdir "$SubfolderName"

cd $SubfolderName

for ((k=1; k<=NumFile; k++))
do

FileName="file$k.txt"
#FilePath="$SubfolderPath/$FileName"

touch $FileName
done
cd ..
done
cd ..
done
