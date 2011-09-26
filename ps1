#!/bin/env bash

# colors
RED="\[\033[0;31m\]"
GREEN="\[\033[0;32m\]"
YELLOW="\[\033[0;33m\]"
BLUE="\[\033[0;34m\]"
RESET="\[\033[0;00m\]"

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

# ~/Code/dotfiles  (ruby-1.9.2-p290)  (rails3)  (master)
# 21:04:29 $ ...
PS1="\n\w  $GREEN\$(__rvm_ruby '(%s)') $YELLOW\$(__rvm_gemset ' (%s) ') $RED\$(__git_ps1 '(%s)')\n$BLUE\$(date '+%H:%M:%S') $RESET\$ "
