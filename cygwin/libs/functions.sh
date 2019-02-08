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

function settitle () 
{ 
   echo -ne "\e]2;$@\a\e]1;$@\a"; 
 }