if [ -x "$(command -v apt-get)" ]; then
  apt-get install -y zsh
elif [ -x "$(command -v pacman)" ]; then
  pacman -S --needed zsh
fi

chsh -s /bin/zsh

# slimzsh
git clone --recursive https://github.com/changs/slimzsh.git
mv slimzsh ~/.slimzsh
chmod g-w ~/.slimzsh

# auto suggestion
if [ -x "$(command -v pacaur)" ]; then
  pacman -S --needed zsh-autosuggestions
  ln -s /usr/share/zsh/plugins/zsh-autosuggestions ~/.zsh/zsh-autosuggestions
else
  git clone git://github.com/zsh-users/zsh-autosuggestions ~/.zsh/zsh-autosuggestions
fi


# zshrc
pwd="$(pwd -P)"
ln -s $pwd/zshrc ~/.zshrc
