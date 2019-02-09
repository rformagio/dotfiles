#!/bin/bash
# First install dotfiles 

function installAptCyg(){

    local STATUS
    wget https://raw.githubusercontent.com/transcode-open/apt-cyg/master/apt-cyg 2&>1 > null
    STATUS=$?
    if [ $STATUS -gt 0 ]; then
        echo "Error downloading apt-cyg!"
        return
    fi
    chmod +x apt-cyg 2&>1 > null
    STATUS=$?
    if [ $STATUS -gt 0 ]; then
        echo "Error chmod apt-cyg!"
        return
    fi
    mv apt-cyg /usr/local/bin 2&>1 > null
    STATUS=$?
    if [ $STATUS -gt 0 ]; then
        echo "Error moving apt-cyg!"
        return
    fi
}



echo "                             "
echo "                             "
echo "      _______                "
echo "     ||      \     ========  "
echo "     ||     | |    ||        "
echo "     ||______/     ||===     "
echo "     ||    \       ||        "
echo "     ||     \      ||        "                 
echo 
echo 
echo "     D O T F I L E S         "
echo "*****************************"
echo 
echo 
echo "Select what´s enviroment you are installing:"
echo 
echo
echo " 1 Cygwin"
echo " 2 Ubuntu"
echo
echo

read ENV_DOTFILES

if [ $ENV_DOTFILES -ne 1 -a $ENV_DOTFILES -ne 2 ]; then
    echo "Option doesn't exist!"
    echo
    echo "Skiping installation..."
    exit 0
fi

if [ ! -d ../backup ]; then
 mkdir  -m 777 ../backup
fi

cp ../.* ../backup 2>null

if [ $ENV_DOTFILES -eq 1 ]; then

    echo "Installing dotfiles for Cygwin enviroment..."

    cp cygwin/.bash_profile ../
    cp cygwin/.bashrc ../ 

    echo "Would you like to install SDKMAN(Y/n) ?"
    echo
    echo
    read ENV_SDKMAN

    if [ ENV_SDKMAN = "y" ]; then
        # Install SDKMAN
        curl -s "https://get.sdkman.io" | bash
        source "$HOME/.sdkman/bin/sdkman-init.sh"
        # Install maven 
        sdk install maven 3.6.0
    fi
fi 