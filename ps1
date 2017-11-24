#!/usr/bin/env bash
GREEN="\[\033[0;92m\]"
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
# 0 λ
set_prompt () {
  local Last_Command=$?

  # PS1="$NO_COLOR\n\w $GREEN\$(__git_ps1 '%s')\n${WHITE}${Last_Command} λ$NO_COLOR "
  PS1="\n${WHITE}\$$NO_COLOR "
}

PROMPT_COMMAND='set_prompt'
