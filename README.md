    sudo apt install curl git
    BINDIR=$HOME/bin curl -sfL https://git.io/chezmoi | sh
    $HOME/bin/chezmoi init https://github.com/amireldor/dotfiles-chezmoi.git

    # add [data] with a git_email
    $HOME/bin/chezmoi edit-config

    $HOME/bin/chezmoi apply

