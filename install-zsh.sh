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
  mkdir -p ~/.zsh
  ln -sf /usr/share/zsh/plugins/zsh-autosuggestions ~/.zsh/zsh-autosuggestions
else
  git clone https://github.com/zsh-users/zsh-autosuggestions.git ~/.zsh/zsh-autosuggestions
fi

# zshrc
pwd="$(pwd -P)"
ln -sf $pwd/zshrc ~/.zshrc

# permission fix
zsh -c "autoload -U compaudit; compaudit"
zsh -c "autoload -U compaudit; compaudit | xargs --no-run-if-empty chmod g-w"
zsh -c "autoload -U compaudit; compaudit | xargs --no-run-if-empty chown root"

