    # No need to clone this repo
    
    sudo apt install curl git
    export BINDIR=$HOME/bin
    curl -sfL https://git.io/chezmoi | sh
    
    chezmoi init git@github.com:amireldor/dotfiles-chezmoi.git    

    # add [data] with a git_email
    chezmoi edit-config
    chezmoi apply

