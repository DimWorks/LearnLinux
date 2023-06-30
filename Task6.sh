#!/bin/bash

read -p "Enter the interval(in seconds): " Interval
read -p "Enter path to archive: " PathArch
read -p "Enter path to file: " PathFile

watch -n$Interval tar -cf $PathArch $PathFile
