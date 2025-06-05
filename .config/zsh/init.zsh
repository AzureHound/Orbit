#!/usr/bin/env zsh

# I-beam cursor
echo -ne "\e[5 q"

# Init
eval "$(atuin init zsh)"
eval "$(fzf --zsh)"
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
eval "$(oh-my-posh init zsh --config ~/.config/ohmyposh/p10k.json)"
eval "$(tv init zsh)"
eval "$(zoxide init --cmd cd zsh)"

# Pokemon Scripts
# pokemon-colorscripts --no-title -r 1,3,6
