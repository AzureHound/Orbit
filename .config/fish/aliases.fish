# aliasis
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'

alias la='eza -a --icons'
alias ls='eza --icons'
alias ll='eza -a -l --icons'
alias cp='cp -i'
alias mv='mv -i'
alias rg='rg -i'
alias df='df -h'
alias mkdir='mkdir -p'
alias tree='eza -a -T --git-ignore --icons'
alias lta4="eza -lTag --git-ignore --level=4 --icons"
alias grep='grep --color=auto'
alias glogs='git log --oneline --graph --all'
# alias branch='git branch --sort=-committerdate | fzf --header "Checkout Recent Branch" --preview "git diff --color=always {1} | delta" --pointer="" | xargs git checkout'

alias asciiquarium='asciiquarium -t'
alias bonsai='cbonsai --seed 119'
alias clock='tty-clock -DScC6b'
alias gen='tgpt -i'
alias histwipe="cliphist wipe"
alias matrix="unimatrix -n -c yellow -s 90 -l 'o'"
alias powertop='sudo powertop'
alias private='fish -P'
alias preview='kitten icat'
alias tt="tt -theme '$HOME/.config/tt/Catppuccin-Macchiato'"
alias v="vim"
alias vi="nvim"
alias zed='zeditor'
alias web='w3m duckduckgo.com'
alias weather='gust -f'
