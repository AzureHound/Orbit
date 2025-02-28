# aliasis
alias la='eza -a --icons'
alias ls='eza --icons'
alias ll='eza -a -l --icons'
alias cp='cp -i'
alias mv='mv -i'
alias df='df -h'
alias tree='eza -a -T --git-ignore --icons'
alias lta4="eza -lTag --git-ignore --level=4 --icons"
alias histwipe="cliphist wipe"
alias private='fish -P'
alias rg='rg -i'

alias asciiquarium='asciiquarium -t'
alias bonsai='cbonsai --seed 119'
alias colors='~/.local/bin/colorscript -r'
alias clock='tty-clock -DScC6b'
alias emoji='~/.local/bin/emojifzf'
alias lofi='lowfi'
alias preview='kitten icat'
alias ani-down='~/.local/bin/ani-down'
alias words='tt -theme ~/.tt/Catppuccin-Macchiato'
alias matrix="unimatrix -n -c yellow -s 90 -l 'o'"
alias weather='curl "v2.wttr.in/Agartala?F"'

alias branch='git branch --sort=-committerdate | fzf --header "Checkout Recent Branch" --preview "git diff --color=always {1} | delta" --pointer="" | xargs git checkout'
alias commits="~/.local/bin/commits"
alias glog='git log --oneline --graph --all'
alias gen='tgpt -i'
alias ssh="kitten ssh"
alias notes="~/.local/bin/Notes"
alias powertop='sudo powertop'
alias zed='zeditor'
