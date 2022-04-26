export ZSH="$HOME/.oh-my-zsh"
export GTK_IM_MODULE=cedilla

ZSH_THEME="lambda-mod"

plugins=(
    archlinux
    fzf
    git
    aws
    docker
    docker-compose
    kops
    kubectl
    minikube
    gradle
    mvn
    zsh-autosuggestions
    zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"
