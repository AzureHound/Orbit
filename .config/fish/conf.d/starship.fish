# Function to define the left prompt (character module).
function starship_transient_prompt_func
  starship module character
end

# Function to define the right prompt (time module).
function starship_transient_rprompt_func
  starship module time
end

# Set the custom Starship configuration file.
export STARSHIP_CONFIG="$HOME/.config/starship/starship.toml"

# Initialize Starship for Fish shell.
starship init fish | source

# Enable transience (if desired).
enable_transience
