#! /bin/zsh

source $HOME/dotfiles/.zshrc

export DISPLAY=:1.0

alias -g '¬O'="xdg-open"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

#==============================================================================
# DEFAULT APPS
#==============================================================================
export VISUAL="gvim"

#==============================================================================
# GET LOCALIZATION VARIABLES FROM LOCALE.CONF IF IT EXISTS
#==============================================================================
[[ -f /etc/locale.conf ]] && source /etc/locale.conf

#==============================================================================
# Angular - NVM
#==============================================================================
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

#==============================================================================
# Angular - Yarn
#==============================================================================
YARN_DIR="${HOME}/.yarn"
[[ -d "${YARN_DIR}/bin" ]] && PATH="${PATH}:${YARN_DIR}/bin"
