# shellcheck disable=SC2148
export NVM_DIR="$HOME/.nvm"
# shellcheck disable=SC1091
[ -s "$NVM_DIR/nvm.sh" ] && source "$NVM_DIR/nvm.sh"
# shellcheck disable=SC1091
[ -s "$NVM_DIR/bash_completion" ] && source "$NVM_DIR/bash_completion"
[ -d "$HOME/.pyenv" ] && export PATH="$HOME/.pyenv/bin:$PATH" && eval "$(pyenv init --path)"
[ -x rbenv ] && eval "$(rbenv init - bash)"
# shellcheck disable=SC1091
[ -r /usr/share/bash-completion/completions/git ] && source /usr/share/bash-completion/completions/git
