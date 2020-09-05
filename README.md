    sudo apt install curl git
    BINDIR=$HOME/bin curl -sfL https://git.io/chezmoi | sh
    $HOME/bin/chezmoi init https://github.com/amireldor/dotfiles-chezmoi.git
    echo "now you can `chezmoi apply`"

