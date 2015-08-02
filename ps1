#!/usr/bin/env bash
GREEN="\[\033[0;32m\]"
WHITE="\[\033[0;37m\]"
NO_COLOR="\[\033[0;00m\]"

# Avoid error message when bash-completion for git is not available.
#
# You must install bash-completion with apt-get or homebrew.
if ! command -v __git_ps1 > /dev/null; then
  __git_ps1 () {
    :
  }
fi

# /usr/src/app (master)
# λ
PS1="$NO_COLOR\n\w $GREEN\$(__git_ps1 '(%s)')\n${WHITE}λ$NO_COLOR "
