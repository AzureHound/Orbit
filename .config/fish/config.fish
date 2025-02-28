source ~/.config/fish/user_variables.fish
source ~/.config/fish/abbreviations.fish
source ~/.config/fish/aliases.fish

fish_config theme choose "Catppuccin Macchiato" # Catppuccin Macchiato, Dracula Official

# Fish
set -g theme_nerd_fonts yes

# Fisher
if not type -q fisher
    curl -sL https://raw.githubusercontent.com/jorgebucaran/fisher/main/functions/fisher.fish | source 
end

set sponge_allow_previously_successful false #sponge fish plugin

# Cursor
if status is-interactive
  set fish_cursor_default     line     blink
  set fish_cursor_insert      line     blink
  set fish_cursor_replace_one line     blink
  set fish_cursor_visual      line    blink

  function fish_user_key_bindings
    # fish_default_key_bindings -M insert
    fish_vi_key_bindings --no-erase insert
  end
end

# atuin
atuin init fish | source

# backups
function backup --argument filename
    cp $filename $filename.bak
end

# fzf
fzf --fish | source

# Starship
function starship_transient_prompt_func
  starship module character
end

function starship_transient_rprompt_func
  starship module time
end

export STARSHIP_CONFIG="$HOME/.config/starship/starship.toml"
starship init fish | source
enable_transience

# television
# tv init fish | source

# yazi
function y
	set tmp (mktemp -t "yazi-cwd.XXXXXX")
	yazi $argv --cwd-file="$tmp"
	if set cwd (command cat -- "$tmp"); and [ -n "$cwd" ]; and [ "$cwd" != "$PWD" ]
		builtin cd -- "$cwd"
	end
	rm -f -- "$tmp"
end

# ollama
function ollama-serve
    ollama serve > /dev/null 2>&1 &
end

function ollama-kill
    pkill ollama
end

# zoxide
zoxide init --cmd cd fish | source

# Keybinds
bind \ce 'emoji'
bind \e\ct 'tv'

set -g fish_greeting ""
