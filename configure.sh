#!/bin/bash

path="/data/data/com.termux/files/usr/bin"

if [[ -e "pset" && -e "pass.sh" ]]; then
    mv pset $path
    mv pass.sh $path
	echo "$path/*.?h" >> ~/.bashrc
    echo "Terminal configured! Restart the app or run 'source ~/.bashrc'"
    exit 0
else
    echo "Files not found! Quitting"
    exit 1
fi
