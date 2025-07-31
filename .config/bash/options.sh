# History
HISTCONTROL=ignoreboth
shopt -s histappend
HISTSIZE=1000
HISTFILESIZE=2000

# Adjust Terminal Size
shopt -s checkwinsize

# Prompt
PS1='\[\e[0;36m\]\u\[\e[0;37m\]@\[\e[0;34m\]\h\[\e[0;33m\] \w\[\e[0m\]$(if git rev-parse --is-inside-work-tree &>/dev/null; then echo " \[\e[0;32m\] $(git symbolic-ref --short HEAD 2>/dev/null || echo "HEAD")"; fi) \[\e[38;2;147;154;183m\] \[\e[0m\]'

# I-beam Cursor
echo -ne "\e[5 q"
