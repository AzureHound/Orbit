# NPM
NPM_PACKAGES="${HOME}/.npm-packages"
export PATH="$PATH:$NPM_PACKAGES/bin"
export MANPATH="${MANPATH-$(manpath)}:$NPM_PACKAGES/share/man"

# PERL
PATH="/home/eyes/perl5/bin${PATH:+:${PATH}}"; export PATH;
PERL5LIB="/home/eyes/perl5/lib/perl5${PERL5LIB:+:${PERL5LIB}}"; export PERL5LIB;
PERL_LOCAL_LIB_ROOT="/home/eyes/perl5${PERL_LOCAL_LIB_ROOT:+:${PERL_LOCAL_LIB_ROOT}}"; export PERL_LOCAL_LIB_ROOT;
PERL_MB_OPT="--install_base \"/home/eyes/perl5\""; export PERL_MB_OPT;
PERL_MM_OPT="INSTALL_BASE=/home/eyes/perl5"; export PERL_MM_OPT;
export PERL5LIB=/home/eyes/perl5/lib/perl5:$PERL5LIB

# Pipx
eval "$(register-python-argcomplete pipx)"

# Pyenv
export PYENV_ROOT="$HOME/.pyenv"
[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

# UV
eval "$(uv generate-shell-completion zsh)"
