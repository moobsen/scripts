#!/bin/bash

DARK_MODE=`cat ~/.config/moobsen/dark_mode`
#echo Dark mode was: $DARK_MODE

if [ "$DARK_MODE" = false ]
then
    #echo 'Turned on dark mode.'
    cp ~/.config/xfce4/terminal/terminalrc.solarized-dark ~/.config/xfce4/terminal/terminalrc
    cp ~/.config/Code/User/settings.dark-mode.json ~/.config/Code/User/settings.json
    cp ~/Pictures/bg_dark.png ~/Pictures/bg.png
    echo true > ~/.config/moobsen/dark_mode
else
    #echo 'Turned off dark mode.'
    cp ~/.config/xfce4/terminal/terminalrc.solarized-light ~/.config/xfce4/terminal/terminalrc
    cp ~/.config/Code/User/settings.light-mode.json ~/.config/Code/User/settings.json
    cp ~/Pictures/bg_light.png ~/Pictures/bg.png
    echo false > ~/.config/moobsen/dark_mode
fi

