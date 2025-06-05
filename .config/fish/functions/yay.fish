function yay
    if string match -q -- -S $argv[1]
        command yay -S --needed $argv[2..-1]
    else
        command yay $argv
    end
end
