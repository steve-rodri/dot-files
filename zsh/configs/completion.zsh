fpath=(~/.zsh/completion $fpath)

autoload -U compinit
compinit

# Bash completion
. /usr/local/etc/bash_completion.d

# Allow the use of the z plugin to easily navigate directories
. /usr/local/etc/profile.d/z.sh

## case-insensitive (all), partial-word and then substring completion
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}' \
    'r:|[._-]=* r:|=*' 'l:|=* r:|=*'
