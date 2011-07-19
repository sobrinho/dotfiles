source ~/Code/dotfiles/aliases
source ~/Code/dotfiles/config
source ~/Code/dotfiles/env

[[ -f `brew --prefix`/etc/bash_completion ]] && source `brew --prefix`/etc/bash_completion

[[ -f $HOME/.rvm/scripts/rvm ]] && source $HOME/.rvm/scripts/rvm
[[ -f $rvm_path/scripts/completion ]] && source $rvm_path/scripts/completion
