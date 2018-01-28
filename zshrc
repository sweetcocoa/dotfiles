# git clone https://github.com/changs/slimzsh.git
# slim includes zsh-fash-syntax-highlighting (which replaces zsh-syntax-highlight)
source "$HOME/.slimzsh/slim.zsh"

# pacaur -S zsh-autosuggestions
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh


alias grep='grep --color=auto'
alias gpu='watch -n 1 nvidia-smi'
alias commit='git commit -m'
alias add='git add -u'

alias ls='ls --color'
alias t='tmux attach -t 0 || tmux new'
alias d='docker exec -it notebook zsh'

export LESS='--ignore-case --raw-control-chars'
export GOROOT=/usr/lib/go
