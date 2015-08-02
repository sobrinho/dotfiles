#!/usr/bin/env bash
DOTFILES_PATH=$(dirname $(readlink "$BASH_SOURCE"))

source $DOTFILES_PATH/environment
source $DOTFILES_PATH/homebrew
source $DOTFILES_PATH/rbenv
source $DOTFILES_PATH/aliases
source $DOTFILES_PATH/ps1
source $DOTFILES_PATH/heroku
source $DOTFILES_PATH/docker
