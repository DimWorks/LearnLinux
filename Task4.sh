#!/bin/bash

read -p "Enter the name of process: " ProcessName
read -p "Enter from what date: " FromT
read -p "Enter to what date: " ToT

sudo journalctl -S $FromT -U $ToT --grep $ProcessName
