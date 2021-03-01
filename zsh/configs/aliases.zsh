# Zsh
alias zc="cd  ~/.config/zsh/configs && nvim"
alias zca="nvim ~/.config/zsh/configs/aliases.zsh"
alias zu="source ~/.zshrc"

# Hyper
alias hc="nvim ~/.hyper.js"

# Vim
alias v="nvim"
alias vi="nvim"
alias vc="nvim ~/.config/nvim"
alias vic="cd ~/.config/nvim && nvim"
alias vim="nvim"

# Git
alias ga='git add'
alias gaa='git add --all'
alias gb='git branch'
alias gc='git commit'
alias gco='git checkout'
alias gd='git diff'
alias get='git'
alias gitconfig="vi ~/.config/git/config"
alias gk='gitk --all&'
alias got='git'
alias gpl='git pull'
alias gpu='git push'
alias gs='git status'
alias gt='git tag'
alias gx='gitx --all'

# LazyGit
alias lg="lazygit"

# Yarn
alias cra='yarn create react-app'
alias y='yarn'
alias ya='yarn add'
alias yarnpackages='cd ~/asdf/installs/yarn/'
alias ycra='yarn create react-app'
alias yr='yarn remove'
alias ys='yarn start'

# NPM
alias nodepackages='cd ~/.asdf/installs/node/'

# ColorLS
alias ls='colorls --group-directories-first'
alias lsa='colorls --group-directories-first --almost-all'
alias lsg='colorls --group-directories-first --almost-all --git-status'
alias lst='colorls --group-directories-first --almost-all --tree'

# Scriptable
alias scriptableiCloud="cd ~/Library/Mobile\ Documents/iCloud~dk~simonbs~Scriptable/Documents"
alias scriptable="cd ~/Documents/Development/Projects/Scriptable.nosync && vi"

alias ss="start_dev_server"
# Custom functions
function start_dev_server {
  if [ -f yarn.lock ]
  then
    yarn start
  elif [ -f package.json ]
  then
    npm start
  elif [ -f index.html ]
  then
    browser-sync start --server --files '**'
  else
    echo "No package.json or index.html file found"
  fi
}
