#!/usr/bin/env zsh

alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'

alias la='eza -a --icons'
alias ls='eza --icons'
alias ll='eza -a -l --icons'
alias cp='cp -i'
alias mv='mv -i'
alias rg='rg -i'
alias df='df -h'
alias mkdir='mkdir -p'
alias tree='eza -a -T --git-ignore --icons'
alias lta4="eza -lTag --git-ignore --level=4 --icons"
alias lg='lazygit'
alias glogs='git log --oneline --graph --all'
# alias branch='git branch --sort=-committerdate | fzf --header "Checkout Recent Branch" --preview "git diff --color=always {1} | delta" --pointer="" | xargs git checkout'
alias c='clear'

alias asciiquarium='asciiquarium -t'
alias bonsai='cbonsai --seed 119'
alias clock='tty-clock -DScC6b'
alias gen='tgpt -i'
alias histwipe="cliphist wipe"
alias lofi='lowfi'
alias matrix="unimatrix -n -c yellow -s 90 -l 'o'"
alias powertop='sudo powertop'
alias preview='kitten icat'
alias v='nvim'
alias tt="tt -theme '$HOME/.config/tt/Catppuccin-Macchiato'"
alias zed='zeditor'
