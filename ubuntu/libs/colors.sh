#!/bin/bash
# ANSI color codes

USER_SYMBOL="\u"
HOST_SYMBOL="\h"
PATH_SYMBOL="\w"
SHELL_NAME="\s"
VERSION_NUMBER="\v"

RS="\[\033[0m\]"        # reset
HC="\[\033[1m\]"        # hicolor
UL="\[\033[4m\]"        # underline
INV="\[\033[7m\]"       # inverse background and foreground(normal)

#Normal colors
NBLACK="\[\033[30m\]"   # black
NRED="\[\033[31m\]"     # red
NGREEN="\[\033[32m\]"   # green
NYELLOW="\[\033[33m\]"  # yellow
NBLUE="\[\033[34m\]"    # blue
NMAGENTA="\[\033[35m\]" # magenta
NCYAN="\[\033[36m\]"    # cyan
NWHITE="\[\033[37m\]"   # white

#Bold or Bright colors
BBLACK="\[\033[30;1m\]"   # bold black
BRED="\[\033[31;1m\]"     # bold red
BGREEN="\[\033[32;1m\]"   # bold green
BYELLOW="\[\033[33;1m\]"  # bold yellow
BBLUE="\[\033[34;1m\]"    # bold blue
BMAGENTA="\[\033[35;1m\]" # bold magenta
BCYAN="\[\033[36;1m\]"    # bold cyan
BWHITE="\[\033[37;1m\]"   # bold white

#Background colors
BKBLACK="\[\033[40m\]"   # background black
BKRED="\[\033[41m\]"     # background red
BKGREEN="\[\033[42m\]"   # background green
BKYELLOW="\[\033[43m\]"  # background yellow
BKBLUE="\[\033[44m\]"    # background blue
BKMAGENTA="\[\033[45m\]" # background magenta
BKCYAN="\[\033[46m\]"    # background cyan
BKWHITE="\[\033[47m\]"   # background white