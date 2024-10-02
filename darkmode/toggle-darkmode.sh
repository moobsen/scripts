#!/bin/bash

# go to folder in which the script resides
cd $(dirname "$0")
# run in git root folder
cd $(git rev-parse --show-toplevel)

DARK_MODE_STATUS=$HOME/.config/dark_mode_status
VS_CODE_CONFIG=$HOME/.config/Code/User/settings.json
CODIUM_CONFIG=$HOME/.config/VSCodium/User/settings.json

set_xfce4_terminal_solarized_light() {
    xfconf-query -c xfce4-terminal -p /color-foreground -s "#073642"
    xfconf-query -c xfce4-terminal -p /color-background -s "#fdf6e3"
    xfconf-query -c xfce4-terminal -p /color-cursor     -s "#073642"
    xfconf-query -c xfce4-terminal -p /color-bold       -s "#073642"
}

set_xfce4_terminal_solarized_dark() {
    xfconf-query -c xfce4-terminal -p /color-foreground -s "#839496"
    xfconf-query -c xfce4-terminal -p /color-background -s "#002b36"
    xfconf-query -c xfce4-terminal -p /color-cursor     -s "#93a1a1"
    xfconf-query -c xfce4-terminal -p /color-bold       -s "#93a1a1"
}

if [ `cat $DARK_MODE_STATUS` = false ]
then
    #echo 'Turned on dark mode.'
    # terminal color
    set_xfce4_terminal_solarized_dark
    # vscode color
    jq '."workbench.colorTheme" |= "Solarized Dark"' $CODIUM_CONFIG > settings.tmp && mv settings.tmp $CODIUM_CONFIG
    # change desktop backgroud
    feh --bg-center ./darkmode/img/bg_dark.png --image-bg "#002B36"
    # set background brightness to 0%
    sudo brightnessctl s 20%
    gsettings set org.gnome.desktop.interface color-scheme prefer-dark
    echo true > $DARK_MODE_STATUS
else
    #echo 'Turned off dark mode.'
    set_xfce4_terminal_solarized_light
    jq '."workbench.colorTheme" |= "Solarized Light"' $CODIUM_CONFIG > settings.tmp && mv settings.tmp $CODIUM_CONFIG
    feh --bg-center ./darkmode/img/bg_light.png --image-bg "#fdf6e3"
    sudo brightnessctl s 100%
    gsettings set org.gnome.desktop.interface color-scheme prefer-light
    echo false > $DARK_MODE_STATUS
fi

