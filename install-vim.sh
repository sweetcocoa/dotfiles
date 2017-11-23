if [ -x "$(command -v apt-get)" ]; then
    apt-get install software-properties-common
    add-apt-repository -y ppa:neovim-ppa/stable
    apt-get update
    apt-get install -y neovim git xclip xsel python-jedi
    pip3 install neovim
    pip install neovim
    curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
        https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

    update-alternatives --install /usr/bin/vi vi /usr/bin/nvim 60
    update-alternatives --config vi
    update-alternatives --install /usr/bin/vim vim /usr/bin/nvim 60
    update-alternatives --config vim
    update-alternatives --install /usr/bin/editor editor /usr/bin/nvim 60
    update-alternatives --config editor
elif [ -x "$(command -v pacman)" ]; then
    pacman -S --noconfirm --needed neovim vim-plug git python2-neovim python-neovim xclip xsel python-jedi
    pacman -R --noconfirm vim vi
    pacman -S --noconfirm --needed neovim-drop-in
fi

mkdir -p ~/.config/nvim/colors

pwd="$(pwd -P)"

ln -sf $pwd/vim/vimrc ~/.config/nvim/init.vim
ln -sf $pwd/vim/peaksea.vim ~/.config/nvim/colors/peaksea.vim
nvim --headless +PlugInstall +qa
