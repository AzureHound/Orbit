#!/usr/bin/env bash

# Init
eval "$(atuin init bash)"
eval "$(fzf --bash)"
# eval "$(starship init bash)"
eval "$(zoxide init --cmd cd bash)"
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"

# NPM
NPM_PACKAGES="${HOME}/.npm-packages"

# UV
eval "$(uv generate-shell-completion bash)"
