# Ollama
# Start the Ollama server in the background.
function ollama-serve
    ollama serve > /dev/null 2>&1 &
end

# Stop the Ollama server.
function ollama-kill
    pkill ollama
end
