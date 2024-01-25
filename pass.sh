#!/bin/bash

trap '' INT TSTP

PATH="/data/data/com.termux/files/usr/bin"
if [[ -e "$PATH/.key.key" ]]; then
    mpass=$( cat $PATH/.key.key )
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

