pacman -S --noconfirm --needed neovim vim-plug git python2-neovim python-neovim xclip xsel python-jedi
mkdir -p ~/.config/nvim/colors

pwd="$(pwd -P)"

ln -sf $pwd/vim/vimrc ~/.config/nvim/init.vim
ln -sf $pwd/vim/peaksea.vim ~/.config/nvim/colors/peaksea.vim
nvim --headless +PlugInstall +qa

