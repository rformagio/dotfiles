#!/bin/bash
# First install dotfiles
echo "                             "
echo "                             "
echo "      _______                "
echo "     ||      \     ========  "
echo "     ||     | |    ||        "
echo "     ||______/     ||===     "
echo "     ||    \       ||        "
echo "     ||     \      ||        "                 
echo ""
echo ""
echo "     D O T F I L E S         "
echo "*****************************"
echo 
echo 
echo "Select what´s enviroment you are installing:"
echo 
echo
echo "1 Cygwin"
echo "2 Ubuntu"
echo
echo

read ENV_DOTFILES

if [ $ENV_DOTFILES -ne 1 -a $ENV_DOTFILES -ne 2 ]; then
    echo "Option doesn't exist!"
    exit 0
fi

if [ ! -d ../backup ]; then
 mkdir  -m 777 ../backup
fi

cp ../.* ../backup 2>null

#if [ $ENV_DOTFILES ] test if 1 or 2


if [ $ENV_DOTFILES -eq 1 ]; then

    echo "Installing dotfiles for Cygwin enviroment..."

    cp cygwin/.bash_profile ../
    cp cygwin/.bashrc ../ 

    echo "Would you like to use SDKMAN(y/n) ?"
    echo
    echo
    read ENV_SDKMAN

    if [ ENV_SDKMAN = "y" ]; then
        # sdkman
        curl -s "https://get.sdkman.io" | bash
        source "$HOME/.sdkman/bin/sdkman-init.sh"
        # install maven 
        sdk install maven 3.6.0
    fi
fi 