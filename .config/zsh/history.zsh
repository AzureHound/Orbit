#!/usr/bin/env zsh

# History
HISTFILE=$XDG_CACHE_HOME/zsh/zsh_history
SAVEHIST=$HISTSIZE
SAVEHIST=10000
HISTDUP=erase

# Filter ZSH Error History
zshaddhistory() {
  local j=1
  while ([[ ${${(z)1}[$j]} == *=* ]]) {
    ((j++))
  }
  whence ${${(z)1}[$j]} >| /dev/null || return 1
}
