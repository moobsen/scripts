#!/bin/bash

DARK_MODE=`cat ~/.config/moobsen/dark_mode`
BASEDIR=$(dirname "$0") #directory in which the script resides
#echo Dark mode was: $DARK_MODE

if [ "$DARK_MODE" = false ]
then
    #echo 'Turned on dark mode.'
    cp $BASEDIR/settings/terminalrc.solarized-dark ~/.config/xfce4/terminal/terminalrc
    cp $BASEDIR/settings/settings.dark-mode.json ~/.config/Code/User/settings.json
    cp $BASEDIR/img/bg_dark.png ~/Pictures/bg.png
    echo true > ~/.config/moobsen/dark_mode
else
    #echo 'Turned off dark mode.'
    cp $BASEDIR/settings/terminalrc.solarized-light ~/.config/xfce4/terminal/terminalrc
    cp $BASEDIR/settings/settings.light-mode.json ~/.config/Code/User/settings.json
    cp $BASEDIR/img/bg_light.png ~/Pictures/bg.png
    echo false > ~/.config/moobsen/dark_mode
fi

