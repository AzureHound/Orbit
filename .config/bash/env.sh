#!/usr/bin/env bash

# Bin
export PATH="/usr/bin:/usr/sbin:/bin:/sbin:$PATH"

# Editor
export EDITOR=nvim
export VISUAL="$EDITOR"
export SUDO_EDITOR="vim"

# FZF
export FZF_DEFAULT_COMMAND="fd --hidden --no-ignore"
export fzf_fd_opts="--hidden --color=always"
export _ZO_FZF_OPTS="$FZF_DEFAULT_OPTS"
export FZF_DEFAULT_OPTS="--height=100% --info=right --border=rounded --pointer='' --marker='⇒' --margin=1 --padding=1 \
--color=bg+:-1,gutter:-1,spinner:#f4dbd6,hl:#ed8796 \
--color=fg:#cad3f5,header:#ed8796,info:#c6a0f6,pointer:#f4dbd6 \
--color=marker:#f4dbd6,fg+:#cad3f5,prompt:#c6a0f6,hl+:#ed8796 \
--color=selected-bg:#494d64 \
--bind='ctrl-u:preview-half-page-up' \
--bind='ctrl-d:preview-half-page-down' \
--bind='ctrl-y:execute-silent(printf {} | cut -f 2- | wl-copy --trim-newline)' \
--multi --prompt='󰥨 Search: '"

# GCC
export GCC_COLORS='error=01;31:warning=01;35:note=01;36:caret=01;32:locus=01:quote=01'

# Man
export MANPAGER="vim -M +MANPAGER -"
# export MANPAGER='nvim +Man!'

# MAN
export PATH="$PATH:$NPM_PACKAGES/bin"
export MANPATH="${MANPATH-$(manpath)}:$NPM_PACKAGES/share/man"

# Vivid
export LS_COLORS="$(vivid generate catppuccin-macchiato)"
