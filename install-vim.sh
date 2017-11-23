if [ -x "$(command -v apt-get)" ]; then
  apt-get install -y neovim vim-plug git python2-neovim python-neovim xclip xsel python-jedi
elif [ -x "$(command -v pacman)" ]; then
  pacman -S --noconfirm --needed neovim vim-plug git python2-neovim python-neovim xclip xsel python-jedi
fi

mkdir -p ~/.config/nvim/colors

pwd="$(pwd -P)"

ln -sf $pwd/vim/vimrc ~/.config/nvim/init.vim
ln -sf $pwd/vim/peaksea.vim ~/.config/nvim/colors/peaksea.vim
nvim --headless +PlugInstall +qa
