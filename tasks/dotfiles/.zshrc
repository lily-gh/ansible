export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="powerlevel10k/powerlevel10k"

plugins=(
  git
  zsh-autosuggestions
  zsh-syntax-highlighting
  colored-man-pages
  encode64
)

source $ZSH/oh-my-zsh.sh

if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# To customize prompt, run 'p10k configure' or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

export BAT_CONFIG_PATH=~/.bat.conf

[ -f ~/.fzf.zsh ] 

# checks if eza command is available before setting the aliases
if [ -x "$(command -v eza)" ]; then
    alias l="eza -1 --long --header --icons --group-directories-first --total-size"
    alias ls="eza -1 --group-directories-first"
    alias ll="eza --long --header --icons --group-directories-first --no-permissions --total-size"
    alias lp="eza --long --header --icons --group-directories-first --total-size"
    alias la="eza -a --long --header --icons --group-directories-first"
    alias lt="eza --tree --long --header --icons --git-ignore --group-directories-first --total-size"
    alias t="eza --tree --header --icons --git-ignore --group-directories-first"
fi

# binds ctrl+l to list folder contents
function list-folder() { printf "\n"; eza -1 --long --header --icons --group-directories-first; zle redisplay; }
zle -N list-folder
bindkey "^L" list-folder
