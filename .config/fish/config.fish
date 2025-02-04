source ~/.config/fish/user_variables.fish
source ~/.config/fish/abbreviations.fish

fish_config theme choose "Catppuccin Macchiato" # Catppuccin Macchiato, Dracula Official

# Fisher
if not type -q fisher
    curl -sL https://raw.githubusercontent.com/jorgebucaran/fisher/main/functions/fisher.fish | source 
end

set sponge_allow_previously_successful false #sponge fish plugin

#oh-my-posh init fish --config ~/.config/ohmyposh/p10k.toml | source

# Starship Prompt
function starship_transient_prompt_func
  starship module character
end

function starship_transient_rprompt_func
  starship module time
end

atuin init fish | source

# backups
function backup --argument filename
    cp $filename $filename.bak
end

# bat
set -gx BAT_THEME "Catppuccin Macchiato" # base16-256, Catppuccin Macchiato, Dracula

# fish
set -g theme_nerd_fonts yes

# aliasis
alias la='eza -a --icons'
alias ls='eza --icons'
alias ll='eza -a -l --icons'
alias tree='eza -a -T --git-ignore --icons'
alias lta4="eza -lTag --git-ignore --level=4 --icons"
alias histwipe="cliphist wipe"
alias private='fish -P'
alias rg='rg -i'

alias asciiquarium='asciiquarium -t'
alias bonsai='cbonsai --seed 119'
alias clock='tty-clock -DScC6b'
alias emoji='~/.local/bin/emojifzf'
alias preview='kitten icat'
alias words='tt -theme ~/.tt/Catppuccin-Macchiato'
alias matrix="unimatrix -n -c yellow -s 90 -l 'o'"
alias weather='curl "v2.wttr.in/Agartala?F"'

alias branch='git branch --sort=-committerdate | fzf --header "Checkout Recent Branch" --preview "git diff --color=always {1} | delta" --pointer="" | xargs git checkout'
alias commits="~/.local/bin/git-branch.sh"
alias gen='tgpt -i'
alias ssh="kitten ssh"
alias powertop='sudo powertop'
alias zed='zeditor'

# Keybinds
bind \ce 'emoji'
bind \cf 'fzf'
bind \ct 'tv'

# FZF
set -xg FZF_DEFAULT_COMMAND fd
set -xg FZF_DEFAULT_OPTS "--height=90% --layout=reverse --info=inline --border rounded --margin=1 --padding=1 \
--color=bg+:-1,gutter:-1,spinner:#f4dbd6,hl:#ed8796 \
--color=fg:#cad3f5,header:#ed8796,info:#c6a0f6,pointer:#f4dbd6 \
--color=marker:#f4dbd6,fg+:#cad3f5,prompt:#c6a0f6,hl+:#ed8796 \
--color=selected-bg:#494d64 \
--bind 'ctrl-u:preview-half-page-up'
--bind 'ctrl-d:preview-half-page-down'
--bind 'ctrl-y:execute-silent(printf {} | cut -f 2- | wl-copy --trim-newline)'"
set -xg fzf_preview_dir_cmd eza --long --header --icons --all --color=always --group-directories-first --hyperlink
set -xg fzf_fd_opts --hidden --color=always
set -xg _ZO_FZF_OPTS $FZF_DEFAULT_OPTS '--preview "{$fzf_preview_dir_cmd} {2}"'

# Npm
set NPM_PACKAGES "$HOME/.npm-packages"
set PATH $PATH $NPM_PACKAGES/bin
set MANPATH $NPM_PACKAGES/share/man $MANPATH

# Starship
export STARSHIP_CONFIG="$HOME/.config/starship/starship.toml"
starship init fish | source
enable_transience

# yazi
function y
	set tmp (mktemp -t "yazi-cwd.XXXXXX")
	yazi $argv --cwd-file="$tmp"
	if set cwd (command cat -- "$tmp"); and [ -n "$cwd" ]; and [ "$cwd" != "$PWD" ]
		builtin cd -- "$cwd"
	end
	rm -f -- "$tmp"
end

# editor
set -xg EDITOR nvim
set -xg VISUAL $EDITOR
set -xg SUDO_EDITOR $EDITOR

# ollama
function ollama-serve
    ollama serve > /dev/null 2>&1 &
end

function ollama-kill
    pkill ollama
end

# zoxide
zoxide init --cmd cd fish | source

set -g fish_greeting ""
