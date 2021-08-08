[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# Make FZF use rg
export FZF_DEFAULT_COMMAND='rg --files --no-ignore-vcs --hidden'

# Enable FZF completion & bindings
source ~/.fzf/shell/key-bindings.zsh
source ~/.fzf/shell/completion.zsh
