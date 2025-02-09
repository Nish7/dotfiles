# paths
export PATH="/opt/homebrew/opt/llvm/bin:$PATH"
export PATH=/opt/homebrew/opt/python@3.12/libexec/bin:$PATH
source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh

# aliases
alias lz='lazygit'
alias gaa='git add --all'
alias gcm='git commit -m'
alias gpsh='git push'
alias gp='git pull'
alias gl='git log'
alias ll="ls -la"
alias ..="cd .."

crun() { clang -o /tmp/a.out "$1" && /tmp/a.out "${@:2}"; }

eval "$(starship init zsh)"
eval "$(fnm env --use-on-cd --shell zsh)"
eval "$(zoxide init zsh)"
