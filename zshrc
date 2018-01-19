autoload -Uz compinit
compinit

zstyle ':completion:*' auto-description 'specify: %d'
zstyle ':completion:*' completer _expand _complete _correct _approximate
zstyle ':completion:*' format 'Completing %d'
zstyle ':completion:*' group-name ''
zstyle ':completion:*' menu select=2
zstyle ':completion:*' list-prompt %SAt %p: Hit TAB for more, or the character to insert%s
zstyle ':completion:*' select-prompt %SScrolling active: current selection at %p%s
zstyle ':completion:*' verbose true
zstyle ':completion:*:*:kill:*:processes' list-colors '=(#b) #([0-9]#)*=0=01;31'
zstyle ':completion:*:kill:*' command 'ps -u $USER -o pid,%cpu,tty,cputime,cmd'
setopt appendhistory autocd extendedglob nomatch notify
setopt  NO_FLOW_CONTROL NO_BEEP NUMERIC_GLOB_SORT EXTENDED_GLOB


# Fix rm
alias rm='nocorrect rm'

# Better history
# Credits to https://coderwall.com/p/jpj_6q/zsh-better-history-searching-with-arrow-keys

setopt sharehistory
autoload -U up-line-or-beginning-search
autoload -U down-line-or-beginning-search
zle -N up-line-or-beginning-search
zle -N down-line-or-beginning-search
bindkey "^[[A" up-line-or-beginning-search # Up
bindkey "^[[B" down-line-or-beginning-search # Down


source "$HOME/.slimzsh/slim.zsh"
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
unsetopt correct_all


alias grep='grep --color=auto'
alias gpu='watch -n 1 nvidia-smi'
alias commit='git commit -m'
alias add='git add -u'


export LESS='--ignore-case --raw-control-chars'
alias t='tmux attach -t 0 || tmux new'
alias d='docker exec -it notebook zsh'

export GOROOT=~/.go
export PATH=$PATH:$GOROOT/bin

