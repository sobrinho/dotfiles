#!/bin/env bash
BASH_PROFILE_PATH=$(readlink "$BASH_SOURCE")

# Canonicalize the bash_profile link. This is necessary because the bsd
# readlink do not do that like readlink -f does on linux.
while [ -L "$BASH_PROFILE_PATH" ]; do
  BASH_PROFILE_PATH=$(readlink "$BASH_PROFILE_PATH")
done

DOTFILES_PATH=$(dirname "$BASH_PROFILE_PATH")

source $DOTFILES_PATH/environment
source $DOTFILES_PATH/homebrew
source $DOTFILES_PATH/rbenv
source $DOTFILES_PATH/aliases
source $DOTFILES_PATH/ps1
