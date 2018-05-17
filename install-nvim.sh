if [ -x "$(command -v apt-get)" ]; then
    apt-get install software-properties-common
    add-apt-repository -y ppa:neovim-ppa/stable
    apt-get update
    apt-get install -y neovim python-jedi
    pip3 install neovim
    
    curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
        https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

    update-alternatives --install /usr/bin/vi vi /usr/bin/nvim 60
    update-alternatives --install /usr/bin/vim vim /usr/bin/nvim 60
    update-alternatives --install /usr/bin/editor editor /usr/bin/nvim 60
elif [ -x "$(command -v pacman)" ]; then
    pacaur -S --noconfirm --needed neovim vim-plug python-neovim python-jedi
    pacaur -R --noconfirm vim vi
    pacaur -S --noconfirm --needed neovim-drop-in
fi

pwd="$(pwd -P)"

ln -sf $pwd/vim/vimrc ~/.config/nvim/init.vim
nvim --headless +PlugInstall +qa
