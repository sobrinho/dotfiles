#!/bin/env bash

# colors
RED="\[\033[0;31m\]"
GREEN="\[\033[0;32m\]"
BLUE="\[\033[0;34m\]"
RESET="\[\033[0;00m\]"

# fetch current ruby version
__ruby_ps1 () {
  printf "$1" "$(rbenv version-name)"
}

# ~/Code/dotfiles  (ruby-1.9.2-p290)  (master)
# 21:04:29 $
PS1="\n\w  $GREEN\$(__ruby_ps1 '(%s)')  $RED\$(__git_ps1 '(%s)')\n$BLUE\$(date '+%H:%M:%S') $RESET\$ "
