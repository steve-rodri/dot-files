# General ZSH configurations

export EDITOR="lvim"
export HOMEBREW_CASK_OPTS="--no-quarantine"

PATH=$PATH:"/Users/steve/.local/bin"

sz() { source ~/.zshrc }


first() { awk '{print $1}' }
second() { awk '{print $2}' }
sum() { paste -sd+ - | bc }

igrep() { grep -i $@ }

restart-postgres() {
  rm /usr/local/var/postgres/postmaster.pid && ( \
    cd ~/Library/LaunchAgents && \
      launchctl unload homebrew.mxcl.postgresql.plist && \
      launchctl load -w homebrew.mxcl.postgresql.plist \
  )
}

start_dev_server() {
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

backup_home_brew() {
  CURRENT=$(pwd)
  cd ~/.dotfiles
  brew bundle dump -f --describe --no-upgrade
  cd $CURRENT
  echo "Brew Bundle Successfully Created"
}
