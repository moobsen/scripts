#!/bin/bash

# go to folder in which the script resides
cd $(dirname "$0")
# run in git root folder
cd $(git rev-parse --show-toplevel)

DARK_MODE_STATUS=$HOME/.config/dark_mode_status
VS_CODE_CONFIG=$HOME/.config/Code/User/settings.json
CODIUM_CONFIG=$HOME/.config/VSCodium/User/settings.json

set_foot_solarized_light() {
    pkill -USR2 -x foot
    pkill -USR2 -x footclient
    printf '[main]\ninitial-color-theme=light\n' > $HOME/.config/foot/theme.ini
}

set_foot_solarized_dark() {
    pkill -USR1 -x foot
    pkill -USR1 -x footclient
    printf '[main]\ninitial-color-theme=dark\n' > $HOME/.config/foot/theme.ini
}

if [ `cat $DARK_MODE_STATUS` = false ]
then
    #echo 'Turned on dark mode.'
    # terminal color
    set_foot_solarized_dark
    # vscode color
    jq '."workbench.colorTheme" |= "Solarized Dark"' $CODIUM_CONFIG > settings.tmp && mv settings.tmp $CODIUM_CONFIG
    # change desktop backgroud
    #feh --bg-center ./darkmode/img/bg_dark.png --image-bg "#002B36"
    # set background brightness to 0%
    sudo brightnessctl s 10%
    # set keyboard color to orange
    ~/src/github/moobsen/scripts/keyboard-color/set-keyboard-color.sh 200 100 0
    gsettings set org.gnome.desktop.interface color-scheme prefer-dark
    echo true > $DARK_MODE_STATUS
else
    #echo 'Turned off dark mode.'
    set_foot_solarized_light
    jq '."workbench.colorTheme" |= "Solarized Light"' $CODIUM_CONFIG > settings.tmp && mv settings.tmp $CODIUM_CONFIG
    #feh --bg-center ./darkmode/img/bg_light.png --image-bg "#fdf6e3"
    sudo brightnessctl s 100%
    gsettings set org.gnome.desktop.interface color-scheme prefer-light
    echo false > $DARK_MODE_STATUS
    ~/src/github/moobsen/scripts/keyboard-color/set-keyboard-color.sh 200 150 0
fi

