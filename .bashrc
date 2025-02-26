#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '

# I-beam cursor
echo -ne "\e[5 q"

export EDITOR=nvim
export VISUAL="$EDITOR"
export SUDO_EDITOR $EDITOR

# FZF
export FZF_DEFAULT_OPTS="--height=90% --layout=reverse --info=inline --border rounded --pointer='' --margin=1 --padding=1 \
--color=bg+:-1,gutter:-1,spinner:#f4dbd6,hl:#ed8796 \
--color=fg:#cad3f5,header:#ed8796,info:#c6a0f6,pointer:#f4dbd6 \
--color=marker:#f4dbd6,fg+:#cad3f5,prompt:#c6a0f6,hl+:#ed8796 \
--color=selected-bg:#494d64 \
--bind 'ctrl-u:preview-half-page-up'
--bind 'ctrl-d:preview-half-page-down'
--bind 'ctrl-y:execute-silent(printf {} | cut -f 2- | wl-copy --trim-newline)'
--multi"

# yazi
function y() {
	local tmp="$(mktemp -t "yazi-cwd.XXXXXX")" cwd
	yazi "$@" --cwd-file="$tmp"
	if cwd="$(command cat -- "$tmp")" && [ -n "$cwd" ] && [ "$cwd" != "$PWD" ]; then
		builtin cd -- "$cwd"
	fi
	rm -f -- "$tmp"
}

# NPM
NPM_PACKAGES="${HOME}/.npm-packages"
export PATH="$PATH:$NPM_PACKAGES/bin"
# export MANPATH="${MANPATH-$(manpath)}:$NPM_PACKAGES/share/man"
