#!/bin/bash

trap '' INT TSTP

path="$PREFIX/bin"
if [[ -e "$path/.key.key" ]]; then
    mpass=$( cat $path/.key.key )
else
    pset
fi

export USER=$( whoami )

while true; do
    read -s -p "login : " pass
	decoded=$( echo -n $pass | md5sum )
    if [[ $decoded == $mpass ]]; then
        echo -e "\nWelcome $USER"
        break
    else
        echo -e "\nWrong password!"
    fi
done

