#!/bin/env bash

# colors
RED="\[\033[0;31m\]"
BLUE="\[\033[0;34m\]"
RESET="\[\033[0;00m\]"

# ~/Code/dotfiles  (master)
# 21:04:29 $
PS1="\n\w  $RED\$(__git_ps1 '(%s)')\n$BLUE\$(date '+%H:%M:%S') $RESET\$ "
