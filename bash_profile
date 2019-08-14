#!/usr/bin/env bash
DOTFILES_PATH=$(dirname $(readlink "$BASH_SOURCE"))

source $DOTFILES_PATH/environment
source $DOTFILES_PATH/aliases
source $DOTFILES_PATH/homebrew
source $DOTFILES_PATH/rbenv
source $DOTFILES_PATH/less
source $DOTFILES_PATH/ps1
source $DOTFILES_PATH/history
source $DOTFILES_PATH/fzf
