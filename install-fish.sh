yay -fish fish \
    atuin \
    starship \
    zoxide \
    asdf-vm \
    zellij \
    bat \
    fd

chsh -s $(which fish)

fish <<'END_FISH'
    # set -q XDG_DATA_HOME || set XDG_DATA_HOME $HOME/.local/share
    # set fisher_path "$XDG_DATA_HOME/fish/fisher"
    curl -sL https://raw.githubusercontent.com/jorgebucaran/fisher/main/functions/fisher.fish | source && fisher install jorgebucaran/fisher
END_FISH
