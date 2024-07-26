# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="powerlevel10k/powerlevel10k"

plugins=(git fzf zsh-syntax-highlighting zsh-autosuggestions autojump)

source $ZSH/oh-my-zsh.sh

# User configuration

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# Homebrew Setting
export HOMEBREW_NO_AUTO_UPDATE=1
export HOMEBREW_NO_ENV_HINTS=1

# language setting
export LANG=en_US.UTF-8

# Volta 
export VOLTA_HOME="$HOME/.volta"
export PATH="$VOLTA_HOME/bin:$PATH"

# Autojump
[ -f /opt/homebrew/etc/profile.d/autojump.sh ] && . /opt/homebrew/etc/profile.d/autojump.sh

# Alias 
alias bu='brew update'
alias buu='brew upgrade'
alias bcu='brew cu -a -f'
alias pn='pnpm'
alias ls='colorls'
alias py='python3'
alias pip='pip3'
alias po='poetry'
alias ku='kubectl'
alias vim='nvim'
alias cd='z'
alias ka='kubectl apply -f'
alias kd='kubectl delete -f'
alias ti='terraform init'
alias ta='terraform apply -auto-approve'
alias tf='terraform'


# fzf
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
# export FZF_DEFAULT_COMMAND='fd --type f'
export FZF_DEFAULT_OPTS='--height 60% --layout=reverse --border'

# kubectl completion
source <(kubectl completion zsh)
export PATH="/opt/homebrew/opt/libpq/bin:$PATH"

# zoxide config
eval "$(zoxide init zsh)"

# krew 
export PATH="${KREW_ROOT:-$HOME/.krew}/bin:$PATH"

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/opt/homebrew/Caskroom/miniconda/base/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/opt/homebrew/Caskroom/miniconda/base/etc/profile.d/conda.sh" ]; then
        . "/opt/homebrew/Caskroom/miniconda/base/etc/profile.d/conda.sh"
    else
        export PATH="/opt/homebrew/Caskroom/miniconda/base/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

# auto complete for terraform
complete -o nospace -C /opt/homebrew/bin/terraform terraform


fpath+=~/.zfunc
autoload -Uz compinit && compinit

## curl path 
export PATH="/opt/homebrew/opt/curl/bin:$PATH"
