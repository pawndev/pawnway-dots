# set -q XDG_DATA_HOME || set XDG_DATA_HOME $HOME/.local/share
# set fisher_path "$XDG_DATA_HOME/fish/fisher"
# fish_add_path "$fisher_path"

source /opt/asdf-vm/asdf.fish
zoxide init --cmd cd fish | source
atuin init fish | source
starship init fish | source

if status is-interactive
    if [ "$TERM_PROGRAM" != "vscode" ] && [ "$TERM_PROGRAM" != "JetBrains-JediTerm" ];
        eval (zellij setup --generate-auto-start fish | string collect)
    end
end
