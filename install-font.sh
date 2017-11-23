# Hasklug Nerd Font
if [[ "$OSTYPE" == "linux-gnu" ]]; then
    cd ~/.local/share/fonts && curl -fLo "Hasklug Nerd Font Complete.otf" "https://github.com/ryanoasis/nerd-fonts/raw/master/patched-fonts/Hasklig/Regular/complete/Hasklug%20Nerd%20Font%20Complete.otf"
elif [[ "$OSTYPE" == "darwin"* ]]; then
    # Mac OSX
    cd ~/Library/Fonts && curl -fLo "Hasklug Nerd Font Complete.otf" "https://github.com/ryanoasis/nerd-fonts/raw/master/patched-fonts/Hasklig/Regular/complete/Hasklug%20Nerd%20Font%20Complete.otf"
fi
