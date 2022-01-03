# FZF
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# This is the same functionality as fzf's ctrl-t, except that the file or
# directory selected is now automatically cd'ed or opened, respectively.
fzf-open-file-or-dir() {
  local cmd="command find -L . \
    \\( -path '*/\\.*' -o -fstype 'dev' -o -fstype 'proc' \\) -prune \
    -o -type f -print \
    -o -type d -print \
    -o -type l -print 2> /dev/null | sed 1d | cut -b3-"
  local out=$(eval $cmd | fzf-tmux --exit-0)

  if [ -f "$out" ]; then
    $EDITOR "$out" < /dev/tty
  elif [ -d "$out" ]; then
    cd "$out"
    zle reset-prompt
  fi
}

zle     -N   fzf-open-file-or-dir
bindkey '^P' fzf-open-file-or-dir

# # https://github.com/SidOfc/dotfiles/blob/d07fa3862ed065c2a5a7f1160ae98416bfe2e1ee/zsh/kp
# ### PROCESS
# # mnemonic: [K]ill [P]rocess
# # show output of "ps -ef", use [tab] to select one or multiple entries
# # press [enter] to kill selected processes and go back to the process list.
# # or press [escape] to go back to the process list. Press [escape] twice to exit completely.
# local pid=$(ps -ef | sed 1d | eval "fzf ${FZF_DEFAULT_OPTS} -m --header='[kill:process]'" | awk '{print $2}')

# if [ "x$pid" != "x" ]
# then
#   echo $pid | xargs kill -${1:-9}
#   kp
# fi


# # https://github.com/SidOfc/dotfiles/blob/d07fa3862ed065c2a5a7f1160ae98416bfe2e1ee/zsh/bip
# ### BREW + FZF
# # update multiple packages at once
# # mnemonic [B]rew [U]pdate [P]lugin
# local inst=$(brew search | eval "fzf ${FZF_DEFAULT_OPTS} -m --header='[brew:install]'")

# if [[ $inst ]]; then
#   for prog in $(echo $inst)
#   do brew install $prog
#   done
# fi

# # https://github.com/SidOfc/dotfiles/blob/d07fa3862ed065c2a5a7f1160ae98416bfe2e1ee/zsh/bup
# ### BREW + FZF
# # uninstall multiple packages at once, async
# # mnemonic [B]rew [C]lean [P]lugin (e.g. uninstall)
# local upd=$(brew leaves | eval "fzf ${FZF_DEFAULT_OPTS} -m --header='[brew:update]'")

# if [[ $upd ]]; then
#   for prog in $(echo $upd)
#   do brew upgrade $prog
#   done
# fi

# # https://github.com/SidOfc/dotfiles/blob/d07fa3862ed065c2a5a7f1160ae98416bfe2e1ee/zsh/bcp
# ### BREW + FZF
# # mnemonic [B]rew [I]nstall [P]lugin
# local uninst=$(brew leaves | eval "fzf ${FZF_DEFAULT_OPTS} -m --header='[brew:clean]'")

# if [[ $uninst ]]; then
#   for prog in $(echo $uninst)
#   do brew uninstall $prog
#   done
# fi
# }

# # https://github.com/SidOfc/dotfiles/blob/d07fa3862ed065c2a5a7f1160ae98416bfe2e1ee/zsh/fp
# ### PATH
# # mnemonic: [F]ind [P]ath
# # list directories in $PATH, press [enter] on an entry to list the executables inside.
# # press [escape] to go back to directory listing, [escape] twice to exit completely
# local loc=$(echo $PATH | sed -e $'s/:/\\\n/g' | eval "fzf ${FZF_DEFAULT_OPTS} --header='[find:path]'")

# if [[ -d $loc ]]; then
#   echo "$(rg --files $loc | rev | cut -d"/" -f1 | rev)" | eval "fzf ${FZF_DEFAULT_OPTS} --header='[find:exe] => ${loc}' >/dev/null"
#   fp
# fi

# # https://github.com/SidOfc/dotfiles/blob/d07fa3862ed065c2a5a7f1160ae98416bfe2e1ee/zsh/cani
# ### Caniuse + FZF
# # caniuse for quick access to global support list
# # also runs the `caniuse` command if installed
# local feat=$(ciu | sort -rn | eval "fzf ${FZF_DEFAULT_OPTS} --ansi --header='[caniuse:features]'" | sed -e 's/^.*%\ *//g' | sed -e 's/   .*//g')

# if which caniuse &> /dev/null; then
#   if [[ $feat ]] then; caniuse $feat; fi
# fi

