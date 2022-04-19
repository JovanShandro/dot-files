# Path to your oh-my-zsh installation.
export ZSH="/home/jshandro/.oh-my-zsh"

# Enable colors and change prompt:
autoload -U colors && colors
PS1="%B%F{111}%n %F{135}%~ 🐨%{$reset_color%}%b "
ZSH_THEME="agnoster"
CASE_SENSITIVE="true"
HYPHEN_INSENSITIVE="true"

# Plugins
plugins=(git colored-man-pages zsh-syntax-highlighting zsh-autosuggestions vi-mode zsh-vimode-visual)


source $ZSH/oh-my-zsh.sh

#You may need to manually set your language environment
export LANG=en_US.UTF-8

# Basic auto/tab complete:
autoload -U compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit
_comp_options+=(globdots)		# Include hidden files.

# vi mode
bindkey -v
export KEYTIMEOUT=1

# Switch caplock with escape
setxkbmap -option "caps:swapescape"

# Aliases

alias plantuml='java -jar /usr/bin/plantuml.jar'
alias sass="yarn compile:sass"
alias sassw="yarn compile:sassw"
alias rmn="rm -fr node_modules"

# Git
alias gs="git status"
alias cs="config status"
alias gc="git commit -m"
alias cc="config commit -m"
alias gcl="git clone"
alias gch="git checkout"
alias ga="git add"
alias ca="config add"
alias gb="git branch"
alias gbl="git blame"
alias gpsh="git push"
alias gpsho="git push origin"
alias cpsho="config push origin"
alias gpll="git pull"
alias gpllo="git pull origin"
alias cpllo="config pull origin"
alias gra="git remote add"
alias gsa="git submodule add"
alias gpshom="git push origin main"
alias gpshoms="git push origin master"
alias cpshom="config push origin master"
alias gpllom="git pull origin main"
alias gplloms="git pull origin master"
alias cpllom="config pull origin master"
alias graph="git log --all --graph --decorate --oneline"

#General
alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
alias l="ls"
alias sl="ls"
alias dc="cd"
alias up="cd .."
alias v="nvim"
alias cl="clear"
alias e="exit"
alias open="xdg-open"
alias y="yarn"

# Kubernetes
alias kgp="kubectl get pods"
alias kgd="kubectl get deployments"
alias kgs="kubectl get services"
alias kl="kubectl logs"
alias kcc="kubectl config current-context"
alias kcg="kubectl config get-contexts"
alias kcu="kubectl config use-context"
alias kdcreate="k3d cluster created"
alias kdstart="k3d cluster start"
alias kdstop="k3d cluster stop"
alias kddelete="k3d cluster delete"

# Yarn
alias android="yarn android"
alias start="yarn start"
alias dev="yarn dev"

# nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Path
export ANDROID_SDK=/home/jshandro/Android/Sdk
export ANDROID_HOME=$HOME/Android/Sdk
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/tools/bin
export PATH=$PATH:$ANDROID_HOME/platform-tools
export PATH=$PATH:/usr/local/go/bin
export PATH=$PATH:~/.arkade/bin
export PATH=$PATH:~/.config/yarn/global/node_modules/.bin
export PATH="$DENO_INSTALL/bin:$PATH"
export GOPATH="$(go env GOPATH)"
export PATH=$PATH:$GOPATH/bin
export PATH="$PATH:`pwd`/flutter/bin"

source "$HOME/.cargo/env"

export DENO_INSTALL="/home/jshandro/.deno"
PROG=croc
_CLI_ZSH_AUTOCOMPLETE_HACK=1
source /etc/zsh/zsh_autocomplete_croc

# Helpful functions
source ~/bash/nv.sh
source ~/bash/docker_prune.sh
source ~/bash/delete_docker_images.sh
source ~/bash/delete-docker-containers.sh
source ~/bash/unityhub.sh
source ~/bash/find_and_delete_nm.sh

# Zgen
source "${HOME}/.zgen/zgen.zsh"
# if the init script doesn't exist
if ! zgen saved; then

  # specify plugins here
  zgen oh-my-zsh

  # generate the init script from plugins above
  zgen save
fi

# nix
. /home/jshandro/.nix-profile/etc/profile.d/nix.sh
eval "$(direnv hook zsh)"

# Generated for envman. Do not edit.
[ -s "$HOME/.config/envman/load.sh" ] && source "$HOME/.config/envman/load.sh"


alias luamake=/home/jshandro/lua-language-server/3rd/luamake/luamake
