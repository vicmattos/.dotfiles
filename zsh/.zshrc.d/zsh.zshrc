
# Don't add command to history if has space in beginning
setopt HIST_IGNORE_SPACE

# Removes duplicates of the path array
typeset -U path

# Set Veriables
export EDITOR="code --wait"
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_CACHE_HOME="$HOME/.cache"

# Create Aliases
alias ls='eza --icons --all --git --group-directories-first -1'
alias lsa='eza --long --all --classify --header --git --group-directories-first'
alias grep='grep --color=auto'
alias trail='<<<${(F)path}'


# zsh-autosuggestions
source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh


# zsh-completions
if type brew &>/dev/null; then
    fpath=(
        $(brew --prefix)/share/zsh-completions
        $(brew --prefix)/share/zsh/site-functions
        $fpath
    )
fi
[ -d $XDG_CACHE_HOME/zsh ] || mkdir $XDG_CACHE_HOME/zsh
autoload -Uz compinit && compinit -d $XDG_CACHE_HOME/zsh/.zcompdump-$HOST


# zsh-syntax-highlighting
export ZSH_HIGHLIGHT_HIGHLIGHTERS_DIR=$(brew --prefix)/share/zsh-syntax-highlighting/highlighters
source $(brew --prefix)/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
