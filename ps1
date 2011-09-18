#!/bin/env bash

# colors
RED="\e[31m"
GREEN="\e[32m"
YELLOW="\e[33m"
BLUE="\e[34m"
RESET="\e[0m"

# fetch current gemset name from rvm
__rvm_gemset () {
  if [ -n "$rvm_gemset_name" ]; then
    printf "$1" "$rvm_gemset_name"
  fi
}

# fetch current ruby version from rvm
__rvm_ruby () {
  if [ -n "$rvm_ruby_string" ]; then
    printf "$1" "$rvm_ruby_string"
  fi
}

# ~/Code/dotfiles (master) (ruby-1.9.2-p290) (rails3)
# 21:04:29 $ ...
PS1="\n\w $RED\$(__git_ps1 '(%s) ')$YELLOW\$(__rvm_ruby '(%s) ')$GREEN\$(__rvm_gemset '(%s)')\n$BLUE\$(date '+%H:%M:%S') $RESET\$ "
