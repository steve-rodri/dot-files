# Setup fzf
# ---------
if [[ ! "$PATH" == */Users/Steve/.fzf/bin* ]]; then
  export PATH="${PATH:+${PATH}:}/Users/Steve/.fzf/bin"
fi

# Auto-completion
# ---------------
[[ $- == *i* ]] && source "/Users/Steve/.fzf/shell/completion.zsh" 2> /dev/null

# Key bindings
# ------------
source "/Users/Steve/.fzf/shell/key-bindings.zsh"
