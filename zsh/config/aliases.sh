#!/usr/bin/env bash

alias d="cd ~/.dot-files/ && lvim ./"

# Doppler
alias ds="doppler secrets"
alias dc="doppler configs"

# Zsh
alias zc="cd  ~/.dot-files/zsh/config && lvim"
alias za="lvim ~/.dot-files/zsh/config/aliases.sh"
alias zu="source ~/.dot-files/zsh/zshrc"

# # Home Brew
# alias b="brew"
# alias bb="backup_home_brew"

# Hyper
alias hc="lvim ~/.hyper.js"

# Vim
alias v="lvim"
alias vi="lvim"
alias vc="lvim ~/.dot-files/lvim"
alias vic="cd ~/.dot-files/lvim && v"
alias vim="lvim"

# Tmux
alias t="tmux"
alias ta="tmux a"
alias tns="tmux new -s"
alias ts="tmux list-sessions -F#S | sort | fzf | xargs -r tmux switch -t"

# Git
alias ga='git add'
alias gaa='git add --all'
alias gb='git branch'
alias gc='git commit'
alias gco='git checkout'
alias gd='git diff'
alias get='git'
alias gitconfig="vi ~/.dot-files/git/config"
alias gk='gitk --all&'
alias got='git'
alias gpl='git pull'
alias gpu='git push'
alias gs='git status'
alias gt='git tag'
alias gx='gitx --all'

# LazyGit
alias lg="lazygit"

# React Native
alias rni="kill $(lsof -t -i:8081) && rm -rf ios/build/ && y run ios"

# Yarn
alias cra='yarn create vite --template react-ts'
alias crna='npx react-native init'
alias y='yarn'
alias ya='yarn add'
alias yga='yarn global add'
alias yd='yarn deploy'
alias yp='v ~/.dot-files/yarn/global/package.json'
alias ycra='yarn create react-app'
alias yr='yarn remove'
alias ys='yarn start'


# Bun
alias b='bun'
alias bi='bun install'
alias bga='bun global install'
alias ba='bun add'
alias bd='bun deploy'
alias bcra='bun create react-app'
alias bcea='bun create expo-app -t blank-typescript'
alias br='bun uninstall'
alias bs='bun start'


# NPM
alias nodepackages='cd ~/.asdf/installs/node/'
alias uap= 'bunx npm-check-updates -u'
alias ei="npx expo install"
# alias ei="bun --bun x expo install"

# ColorLS
alias ls='colorls --group-directories-first'
alias lsa='colorls --group-directories-first --almost-all'
alias lsg='colorls --group-directories-first --almost-all --git-status'
alias lst='colorls --group-directories-first --almost-all --tree'

alias sail="./vendor/bin/sail"

# Scriptable
alias scriptableiCloud="cd ~/Library/Mobile\ Documents/iCloud~dk~simonbs~Scriptable/Documents"
alias scriptable="cd ~/Code/scriptable && v"

# Home Assistant
alias ha="cd /Volumes/config"

alias ss="start_dev_server"

alias format="prettier-eslint --write \"{,!(node_modules)/**/}*.{js,jsx,ts,tsx}\""
