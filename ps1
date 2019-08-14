#!/usr/bin/env bash

# Reset
Color_Off='\001\033[0m\002'       # Text Reset

# Regular Colors
Black='\001\033[0;30m\002'        # Black
Red='\001\033[0;31m\002'          # Red
Green='\001\033[0;32m\002'        # Green
Yellow='\001\033[0;33m\002'       # Yellow
Blue='\001\033[0;34m\002'         # Blue
Purple='\001\033[0;35m\002'       # Purple
Cyan='\001\033[0;36m\002'         # Cyan
White='\001\033[0;37m\002'        # White

# Bright Colors
BBlack='\001\033[1;30m\002'        # Black
BRed='\001\033[1;31m\002'          # Red
BGreen='\001\033[1;32m\002'        # Green
BYellow='\001\033[1;33m\002'       # Yellow
BBlue='\001\033[1;34m\002'         # Blue
BPurple='\001\033[1;35m\002'       # Purple
BCyan='\001\033[1;36m\002'         # Cyan
BWhite='\001\033[1;37m\002'        # White

# Avoid error message when bash-completion for git is not available.
#
# You must install bash-completion with apt-get or homebrew.
if ! command -v __git_ps1 > /dev/null; then
  __git_ps1 () {
    :
  }
fi

# pwd:app   ref:master   ruby:2.3.5   rails:3.2.2.1   node:v8.9.1   status:0
# $
set_prompt () {
  local Last_Command=$?

  PS1="\n${White}pwd:${Green}\W   ${White}ref:${Green}$(__git_ps1 '%s')   ${White}ruby:${Green}$(rbenv version-name)   ${White}rails:${Green}$(test -f Gemfile.lock && sed -nE 's/^  rails \([^0-9]*([0-9.]+)\)!?/\1/p' Gemfile.lock || echo ✘)   ${White}node:${Green}$(node -v)   ${White}status:${Green}${Last_Command}\r\n${Red}λ$Color_Off "
}

PROMPT_COMMAND='set_prompt'
