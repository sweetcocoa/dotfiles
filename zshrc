# git clone --recursive https://github.com/changs/slimzsh.git
source "$HOME/.slimzsh/slim.zsh"
setopt nocorrectall

# arch: pacaur -S zsh-autosuggestions
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh 2>/dev/null
# ubuntu: git clone https://github.com/zsh-users/zsh-autosuggestions ~/.zsh/zsh-autosuggestions
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh 2>/dev/null

alias grep='grep --color=auto'
alias gpu='watch -n 1 nvidia-smi'
alias commit='git commit -m'
alias add='git add -u'

alias ls='ls --color'
alias t='tmux attach -t 0 || tmux new'
alias d='docker exec -it notebook zsh'

export LESS='--ignore-case --raw-control-chars'
export TERM='screen-256color'

export GOROOT=/usr/lib/go
export PKG_CONFIG_PATH=$PKG_CONFIG_PATH:/usr/local/lib/pkgconfig
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/usr/local/lib

export PATH=$PATH:$HOME/go/bin
export PATH=$PATH:$HOME/yarn/bin  # e.g. yarn global add babel
export PATH=$PATH:$HOME/cargo/bin  # e.g. cargo install cargo-make
