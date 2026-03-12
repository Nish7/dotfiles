# paths
export PATH="/opt/homebrew/opt/llvm/bin:$PATH"
export PATH=/opt/homebrew/opt/python@3.12/libexec/bin:$PATH
export PATH="/opt/homebrew/opt/openjdk@21/bin:$PATH"
source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh
export JAVA_HOME="$(brew --prefix openjdk@21)/libexec/openjdk.jdk/Contents/Home" 

# aliases
alias lz='lazygit'
alias gaa='git add --all'
alias gcm='git commit -m'
alias gpsh='git push'
alias gp='git pull'
alias gl='git log'
alias ll="ls -la"
alias ..="cd .."
alias vim='nvim'
alias :q='exit'

crun() { clang -o /tmp/a.out "$1" && /tmp/a.out "${@:2}"; }

eval "$(starship init zsh)"
eval "$(fnm env --use-on-cd --shell zsh)"
eval "$(zoxide init zsh)"

autoload -U compinit; compinit
source ~/.oh-my-zsh/custom/plugins/fzf-tab/fzf-tab.plugin.zsh

# bun completions
[ -s "/Users/nish7/.bun/_bun" ] && source "/Users/nish7/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

export PATH="/opt/homebrew/opt/llvm/bin:$PATH"
export PATH="$HOME/.local/bin:$PATH"
