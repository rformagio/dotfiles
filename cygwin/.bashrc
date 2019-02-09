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
    source "${HOME}/dotfiles/cygwin/.cyg_path"
fi
source "${HOME}/dotfiles/cygwin/libs/colors.sh"
source "${HOME}/dotfiles/cygwin/libs/functions.sh"

source "${HOME}/dotfiles/cygwin/.alias"
source "${HOME}/dotfiles/cygwin/.prompt"

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
echo "###################################################################################"

#figlet -f standard "RF"

echo
echo "This is a $INT_SHELL $LOGIN_SHELL shell!!"
echo
echo
echo $(getJavaVersion)
echo
#echo $(getMavenVersion)
echo
#echo $(gradle -v)
echo 
#echo $(getGroovyVersion)
echo 
#echo $(python -V)
echo 
echo "###################################################################################"


