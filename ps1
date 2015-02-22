#!/bin/env bash

# colors
RED="\[\033[0;31m\]"
GREEN="\[\033[0;32m\]"
WHITE="\[\033[0;37m\]"
NO_COLOR="\[\033[0;00m\]"

# fetch current ruby version
__ruby_ps1 () {
  if command -v rbenv > /dev/null; then
    printf "$1" "$(rbenv version-name)"
  else
    printf "$1" "$(ruby -v | awk '{ print $2 }')"
  fi
}

# ~/Developer (1.9.3-p327) (master)
# λ
PS1="\n\w $GREEN\$(__ruby_ps1 '(%s)') $RED\$(__git_ps1 '(%s)')\n${WHITE}λ$NO_COLOR "
