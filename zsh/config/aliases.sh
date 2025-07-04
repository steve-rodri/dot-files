#!/usr/bin/env bash

alias d="nvim ~/.dot-files/"

alias n="nr"

# Doppler
alias ds="doppler secrets"
alias dc="doppler configs"

# Zsh
alias zc="cd  ~/.dot-files/zsh/config && nvim"
alias za="nvim ~/.dot-files/zsh/config/aliases.sh"
alias zu="source ~/.dot-files/zsh/zshrc"

# # Home Brew
# alias b="brew"
# alias bb="backup_home_brew"

# Hyper
alias hc="nvim ~/.hyper.js"

# Vim
alias v="nvim"
alias vi="nvim"
alias vc="nvim ~/.dot-files/nvim"
alias vic="cd ~/.dot-files/nvim && v"
alias vim="nvim"

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
alias gpt='git push --tags'
alias gs='git status'
alias gt='git tag'
alias gx='gitx --all'

# Lazy
alias lg="lazygit"
alias ld="lazydocker"

# React Native
alias rni="kill $(lsof -t -i:8081) && rm -rf ios/build/ && y run ios"

alias kp="kill_port"
# Yarn
alias y='yarn'
alias ya='yarn add'
alias yga='yarn global add'
alias yd='yarn deploy'
alias yp='v ~/.dot-files/yarn/global/package.json'
alias yr='yarn remove'
alias ys='yarn start'

# Bun
alias b='bun run'
alias br='bun run'
alias bi='bun install'
alias bu='bun uninstall'
alias bgi='bun global install'
alias ba='bun add'
alias bd='bun deploy'
alias bs='bun start'

# React
alias cra='bun create vite --template react-ts'
alias cea='bun create expo-app'

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

#FZF
alias f="fzf --preview 'bat --style=numbers --color=always {}' | xargs -n 1 nvim"
export FZF_DEFAULT_COMMAND='ag --hidden --ignore .git -l -g ""'

alias ai="~/.dot-files/tmux/scripts/tmux_ai.sh"
