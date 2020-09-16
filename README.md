    # No need to clone this repo
    
    sudo apt install curl git
    export BINDIR=$HOME/bin
    curl -sfL https://git.io/chezmoi | sh
    
    $HOME/bin/chezmoi init git@github.com:amireldor/dotfiles-chezmoi.git

    # add [data] with a git_email
    $HOME/bin/chezmoi chezmoi edit-config
    $HOME/bin/chezmoi chezmoi apply

    # then you could use chezmoi regularly... (after re-login?)

