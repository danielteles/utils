export ZSH=/Users/danielteles/.oh-my-zsh

ZSH_THEME="powerlevel9k/powerlevel9k"
DEFAULT_USER="danielteles"

plugins=(
  git
)

source $ZSH/oh-my-zsh.sh
source /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/Users/danielteles/.sdkman"
[[ -s "/Users/danielteles/.sdkman/bin/sdkman-init.sh" ]] && source "/Users/danielteles/.sdkman/bin/sdkman-init.sh"
