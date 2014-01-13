#!/bin/bash

# Iterate through all available console fonts, setting each one so the user can see which one they like

[ $UID != 0 ] && echo "Sorry, must be root" && exit

function _trap()
{
    # Cleanup
    setfont /usr/share/consolefonts/_default
    [ -e $default ] && rm $default
    echo
    exit
}
trap _trap {1..15}

length=0
default=/usr/share/consolefonts/_default

for f in `ls /usr/share/consolefonts`
do
    # Set this new font
    echo -n $f
    if [ ! -e $default ]
    then
        setfont -o $default $f
    else
        setfont $f
    fi

    # Save length of filename so we can reset the line
    length=${#f}
    sleep 2

    # Clear the output
    for (( length=0; $length < ${#f}; length++ ))
    do
        echo -ne "\b"
    done
done

