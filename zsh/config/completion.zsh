fpath=(~/.zsh/completion $fpath)

autoload -U compinit
compinit

# Bash completion
# . /usr/local/etc/bash_completion.d

## case-insensitive (all), partial-word and then substring completion
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}' \
    'r:|[._-]=* r:|=*' 'l:|=* r:|=*'
