# dotfiles
My personal dotfiles.

## Why?

I have been looking for a set of *dotfiles* that meets my simple needs. I have found a lot of awesome and functional *dotfiles*. But I was never satisfied.

Some of them were a little bit slow. Others were too many ornamented. In addition, the most of them were dificult to customize and my knowledge about shell script it was not so good. 

After I spend some time thinking about it, I finally concluded that I didn´t need a sophisticated *dotfiles*. I needed some custom features like:
- show git branch
- show current directory
- some aliases
- some custom functions
- and so on

So, I decided to create my personal set of *dotfiles* !

And finally, here they are !!

Remember: I'm not a *pro* in shell script. My *dotfiles* are very simple but meet my needs. Furthermore, I could learn a little about shell script and *dotfiles*. 




## Installation

1) go to your user diretory: /home/{user}    ( *$ cd ~* )
2) *git clone* the repository **dotfiles**
3) go to dotfiles directory:  *$ cd dotfiles*
4) exec *firstInstall.sh*
   - You will be asked about what´s enviroment your are installing the *dotfiles*: **Cygwin** or **Ubuntu**. For while, only **Cygwin** installation is available.
   - After that, you will be asked about to use SDKMAN. SDKMAN is is tool for installing and managing softwares like Maven, Ant, Jdk, and so on. You can find more information in: https://sdkman.io/ 
   - If you choose to use SDKMAN, it will install Maven and SDKMAN tool will be available for use.
   - If choose not to use it, so, it will put a *cyg_path*  file in $/dotfiles/cygwin$. This file redefines the PATH variable !! You can custmize your own PATH in it.
   
   The *firstInstall.sh* script will create a **backup** diretory with your original files. And the following diretories structure:
   ![Directory] (dotfiles-directory-structure.png?raw=true)

