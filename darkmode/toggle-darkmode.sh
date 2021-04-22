#!/bin/bash

# go to folder in which the script resides
cd $(dirname "$0")
# run in git root folder
cd $(git rev-parse --show-toplevel)

DARK_MODE_STATUS=$HOME/.config/dark_mode_status
VS_CODE_CONFIG=$HOME/.config/Code/User/settings.json
CODIUM_CONFIG=$HOME/.config/VSCodium/User/settings.json

pwd > $HOME/pwd.tmp
if [ `cat $DARK_MODE_STATUS` = false ]
then
    #echo 'Turned on dark mode.'
    # terminal color
    cp ./darkmode/settings/terminalrc.solarized-dark $HOME/.config/xfce4/terminal/terminalrc
    # vscode color
    jq '."workbench.colorTheme" |= "Solarized Dark"' $VS_CODE_CONFIG > settings.tmp && mv settings.tmp $VS_CODE_CONFIG
    jq '."workbench.colorTheme" |= "Solarized Dark"' $CODIUM_CONFIG > settings.tmp && mv settings.tmp $CODIUM_CONFIG
    # change desktop backgroud
    cp ./darkmode/img/bg_dark.png $HOME/Pictures/bg.png
    echo true > $DARK_MODE_STATUS
else
    #echo 'Turned off dark mode.'
    cp ./darkmode/settings/terminalrc.solarized-light $HOME/.config/xfce4/terminal/terminalrc
    jq '."workbench.colorTheme" |= "Solarized Light"' $VS_CODE_CONFIG > settings.tmp && mv settings.tmp $VS_CODE_CONFIG
    jq '."workbench.colorTheme" |= "Solarized Light"' $CODIUM_CONFIG > settings.tmp && mv settings.tmp $CODIUM_CONFIG
    cp ./darkmode/img/bg_light.png $HOME/Pictures/bg.png
    echo false > $DARK_MODE_STATUS
fi

