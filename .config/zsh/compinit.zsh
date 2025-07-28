#!/usr/bin/env zsh

local _zcompdump_file="$XDG_CONFIG_HOME/zsh/.zcompdump"

# Load Completions
if [[ -z "$_zcompdump_file" || ! -f "$_zcompdump_file" || "$_zcompdump_file" -ot "$ZSH_VERSION" ]]; then
    autoload -Uz compinit && compinit -u -d "$_zcompdump_file"
else
    autoload -Uz compinit && compinit -u -C -d "$_zcompdump_file"
fi

zinit cdreplay -q
