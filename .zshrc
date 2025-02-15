# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Config by Bineequation! <3 

# Path to oh-my-zsh
export ZSH="$HOME/.oh-my-zsh"

# POWERLINE10K theme
ZSH_THEME="powerlevel10k/powerlevel10k"

# Automatic oh-my-zsh update
zstyle ':omz:update' mode auto

# Fast access to big projects
DISABLE_UNTRACKED_FILES_DIRTY="true"

# Plugins to use
plugins=(git zsh-autosuggestions zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

# Manuall set default language
export LANG=en_US.UTF-8

# Editor for local and remote sessions
 if [[ -n $SSH_CONNECTION ]]; then
   export EDITOR='nvim'
 else
   export EDITOR='vim'
 fi

# pyenv
export PATH="$HOME/.pyenv/bin:$PATH"
eval "$(pyenv init --path)"
eval "$(pyenv virtualenv-init -)"


# Productivity boosters
alias zconf="nvim ~/.zshrc"  # Fast access to config file
alias zupd="source ~/.zshrc" # Fast config info update
alias ARCH_UPD="sudo pacman -Syu --noconfirm" # Full system update
alias PKGS_UPD="yay -Syu --noconfirm" # Full packages update
alias cls="tput reset" # Full terminal clearing
alias znvim="nvim ~/.config/nvim/init.vim" # Fast nvim config access

# Powerline 10 k settings
# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
