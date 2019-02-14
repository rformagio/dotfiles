#!/bin/bash
# First install dotfiles 

function installFiglet(){

    if curl --output /dev/null --silent --head --fail  http://cygwin.mirrors.hoobly.com/x86_64/release/figlet/figlet-2.2.2-2.tar.bz2
    then 
        cd ../../tmp/
        wget -O figlet.tar.bz2 http://cygwin.mirrors.hoobly.com/x86_64/release/figlet/figlet-2.2.2-2.tar.bz2
        tar -x -C / -f figlet.tar.bz2
        tar -tf figlet.tar.bz2 | gzip > /../etc/setup/figlet.lst.gz
        cd ~
    else
        echo "Cannot install figlet! Check the url !!"
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
echo "                             "
echo "************************************"
echo
echo " ____        _    __ _ _            "
echo "|  _ \  ___ | |_ / _(_) | ___  ___  "
echo "| | | |/ _ \| __| |_| | |/ _ \/ __| "
echo "| |_| | (_) | |_|  _| | |  __/\__ \ "
echo "|____/ \___/ \__|_| |_|_|\___||___/ "


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

if [ "$ENV_DOTFILES" != "1" -a  "$ENV_DOTFILES" != "2" ] ;then
    echo "Option doesn't exist!"
    echo
    echo ">>>>> Skiping installation..."
    exit 0
fi

if [ ! -d ../backup ]; then
 mkdir  -m 777 ../backup
fi

cp ../.* ../backup 2>null

if [ "$ENV_DOTFILES" = "1" ]; then

    echo
    echo "Installing dotfiles for Cygwin enviroment..."
    echo
    echo

    cp cygwin/.bash_profile ../
    cp cygwin/.bashrc ../ 

    echo "Would you like to install SDKMAN(Y/n) ?"
    echo
    echo
    read ENV_SDKMAN

    if [[ "$ENV_SDKMAN" =~ ^([yY][eE][sS]|[yY])+$ ]]; then
        # Install SDKMAN
        curl -s "https://get.sdkman.io" | bash
        source "$HOME/.sdkman/bin/sdkman-init.sh"
        # Install maven 
        sdk install maven 3.6.0
    fi

    echo
    echo ">>>>> Sucessfuly !!!"
    echo
    echo
fi 

if [ "$ENV_DOTFILES" = "2" ]; then

    echo 
    echo ">>>>> Sorry!"
    echo
    echo "This feature is still under construction !!! "
    echo   
    echo  "                   ?(???)? ?(???)? ?(???)?"

fi