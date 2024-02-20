
# Removes duplicates of the path array
typeset -U path

# Set Veriables
export EDITOR="code --wait"

# Create Aliases
alias ls='eza --icons --all --git --group-directories-first -1'
alias lsa='eza --long --all --classify --header --git --group-directories-first'
alias grep='grep --color=auto'
alias trail='<<<${(F)path}'


# zsh-autosuggestions
source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh


# zsh-completions
if type brew &>/dev/null; then
    FPATH=$(brew --prefix)/share/zsh-completions:$FPATH
    autoload -Uz compinit
    compinit
fi
# https://stackoverflow.com/a/71271754
export ZSH_COMPDUMP=~/.cache/zsh/.zcompdump-$HOST


# zsh-syntax-highlighting
export ZSH_HIGHLIGHT_HIGHLIGHTERS_DIR=$(brew --prefix)/share/zsh-syntax-highlighting/highlighters
source $(brew --prefix)/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh