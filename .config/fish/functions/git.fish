function git
    if [ "$argv[1]" = clone ]
        command git clone --depth 1 $argv[2..-1]
    else if [ "$argv[1]" = add ]
        command git add -f $argv[2..-1]
    else
        command git $argv
    end
end
