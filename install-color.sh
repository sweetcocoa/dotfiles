if [[ "$OSTYPE" == "linux-gnu" ]]; then
    bash <(curl -s https://raw.githubusercontent.com/elbaro/starting-block/master/blob/snazzy-gnome.sh)
elif [[ "$OSTYPE" == "darwin"* ]]; then
    # Mac OSX
    open <(curl -s "https://raw.githubusercontent.com/sindresorhus/iterm2-snazzy/master/Snazzy.itermcolors")
fi
