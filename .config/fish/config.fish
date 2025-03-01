source ~/.config/fish/user_variables.fish
source ~/.config/fish/abbreviations.fish
source ~/.config/fish/aliases.fish

# Fish
fish_config theme choose "Catppuccin Macchiato" # Catppuccin Macchiato, Dracula Official
set -g theme_nerd_fonts yes
set sponge_allow_previously_successful false #sponge fish plugin

# yazi
function y
	set tmp (mktemp -t "yazi-cwd.XXXXXX")
	yazi $argv --cwd-file="$tmp"
	if set cwd (command cat -- "$tmp"); and [ -n "$cwd" ]; and [ "$cwd" != "$PWD" ]
		builtin cd -- "$cwd"
	end
	rm -f -- "$tmp"
end

# Keybinds
bind \ce 'emoji'
bind \e\ct 'tv'
