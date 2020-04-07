# My bashrc

#General configuration starts: stuff that you always want executed

# Set the startup directory to /home/<user>
cd ~

# Set (**)
shopt -s globstar

#To use colors in prompt
force_color_prompt=yes

#Throw an error if write to file that exists
set -o noclobber

if [ ! -d "${HOME}/.sdkman" ]; then
    source "${HOME}/dotfiles/ubuntu/.ubu_path"
fi
source "${HOME}/dotfiles/ubuntu/libs/colors.sh"
source "${HOME}/dotfiles/ubuntu/libs/functions.sh"

source "${HOME}/dotfiles/ubuntu/.alias"
source "${HOME}/dotfiles/ubuntu/.prompt"

settitle $USER

#For Docker interactive 
#eval $(docker-machine env default)

#General configuration ends

if [[ -n $PS1 ]]; then
    : # These are executed only for interactive shells
    INT_SHELL="interactive"
else
    : # Only for NON-interactive shells
	INT_SHELL="non interactive"
fi

if shopt -q login_shell ; then
    : # These are executed only when it is a login shell
    LOGIN_SHELL="login"
else
    : # Only when it is NOT a login shell
    LOGIN_SHELL="nonlogin"
fi

echo
echo "#############################################################################################"
echo "# Customized by                                                                             #"
echo "#                                                                                           #"
echo "#  ____  _____                                                                              #"
echo "# |  _ \|  ___|                                                                             #"
echo "# | |_) | |_                                                                                #"
echo "# |  _ <|  _|                                                                               #"
echo "# |_| \_\_|                                                                                 #"
echo "#                                                                                           #"
echo "# Rodrigo 𝓕ormagio - 2019                                                                   #"
echo "#                                                                                           #"
echo "#            ヽ(⌝■_■)ノ♪♬                                                                   #" 
echo "#                                                                                           #"
echo "#                                                                                           #"
echo "#############################################################################################"
echo                                                                                  
echo  This is a $INT_SHELL $LOGIN_SHELL shell!!                                       
echo                                                                                  
echo                                                                                  
echo $(getJavaVersion)                                                             
echo                                                                                 
# echo $(getMavenVersion)                                                            
echo 
#echo $(python -V)
echo 
echo ">>>>>>>>>>>>>>>>>>>>>>>>>>"


#Source custom files. Be carefull about OVERWRITE some variables.
for file in ${HOME}/dotfiles/ubuntu/custom/*; do
	[ -r "$file" ] && [ -f "$file" ] && source "$file";
done;

STATUS=$?
if [ $STATUS -gt 0 ]; then
    echo "    No custom file loaded!      ***********************************************"
    echo
    echo
fi