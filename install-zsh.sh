#!/bin/bash

if [ -x "$(command -v apt-get)" ]; then
  apt-get install -y zsh
elif [ -x "$(command -v pacman)" ]; then
  pacman -S --needed zsh
fi

chsh -s /bin/zsh

# slimzsh
if [ ! -d "$HOME/.slimzsh" ]; then
  git clone --recursive https://github.com/changs/slimzsh.git
  mv slimzsh ~/.slimzsh
  chmod g-w ~/.slimzsh
fi

# auto suggestion
if [ -x "$(command -v pacaur)" ]; then
  pacman -S --needed zsh-autosuggestions
else
  if [ ! -d "$HOME/.zsh/zsh-autosuggestions" ]; then
    git clone https://github.com/zsh-users/zsh-autosuggestions.git ~/.zsh/zsh-autosuggestions
  fi
fi

# zshrc
pwd="$(pwd -P)"
ln -sf $pwd/zshrc $HOME/.zshrc

# permission fix
echo "compaudit :"
zsh -c "autoload -U compaudit; compaudit"
zsh -c "autoload -U compaudit; compaudit | xargs --no-run-if-empty chmod g-w"
zsh -c "autoload -U compaudit; compaudit | xargs --no-run-if-empty chown root"
echo "--- compaudit end ---"

