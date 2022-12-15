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
export PATH=/home/caiocorrea/.local/bin:/home/caiocorrea/.sdkman/candidates/maven/current/bin:/home/caiocorrea/.sdkman/candidates/kotlin/current/bin:/home/caiocorrea/.sdkman/candidates/java/current/bin:/usr/local/sbin:/usr/local/bin:/usr/bin:/usr/lib/jvm/default/bin:/usr/bin/site_perl:/usr/bin/vendor_perl:/usr/bin/core_perl
