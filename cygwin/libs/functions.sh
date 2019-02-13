#!/bin/bash

function getAllJavaFromPath(){
    local AUX=$IFS;
    local JAVA_FOUND;
    IFS=":";
    for P in $PATH; do
        if echo $P | grep -q -i "java" ; then
            JAVA_FOUND+=("$P");
        fi
    done
    IFS=$AUX;
    echo $JAVA_FOUND;
}

function getJavaVersion(){
    java -version | sed -n '/java/{p;q;}'
}

function getMavenVersion(){
    mvn -v | sed -n '/Maven/{p;q;}'
}

function getGroovyVersion(){
    groovy -v | sed -n '/groovy/{p;q;}'
}

function settitle () { 
   echo -ne "\e]2;$@\a\e]1;$@\a"; 
 }

 function installAptCyg(){

    local STATUS
    wget https://raw.githubusercontent.com/transcode-open/apt-cyg/master/apt-cyg 2>&1 > null
    STATUS=$?
    if [ $STATUS -gt 0 ]; then
        echo "Error downloading apt-cyg!"
        return
    fi
    chmod +x apt-cyg
    STATUS=$?
    if [ $STATUS -gt 0 ]; then
        echo "Error chmod apt-cyg!"
        return
    fi
    mv apt-cyg /usr/local/bin
    STATUS=$?
    if [ $STATUS -gt 0 ]; then
        echo "Error moving apt-cyg!"
        return
    fi
}

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