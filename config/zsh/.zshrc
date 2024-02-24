## antidote install
export ANTIDOTE_HOME="${XDG_DATA_HOME:-${HOME}/.local/share}/antidote/antidote.git"
[ ! -d $ANTIDOTE_HOME ] && mkdir -p "$(dirname $ANTIDOTE_HOME)"
[ ! -d $ANTIDOTE_HOME/.git ] && git clone --depth=1 https://github.com/mattmc3/antidote.git "$ANTIDOTE_HOME"
source "${ANTIDOTE_HOME}/antidote.zsh"
zstyle ':antidote:bundle' use-friendly-names 'yes'
antidote load
## End of antidote install

## Alias
alias k="kubctl"
alias kk="kustomize"
alias kctx="kubectx"
alias kns="kubens"
if which nvim >/dev/null ;then
    alias vi='nvim'
    alias vim='nvim'
else
    alias vi='vim'
fi
alias v="nvim ."
alias dps-name="docker ps --format '{{.Names}}'"
alias aws-sso="aws sso login"
alias get-touchpad="xinput list | grep Touchpad"
# Common aliases
alias disk="df -H | grep -vE '^Filesystem|tmpfs|cdrom'"
alias :q="exit"
# List directory contents
alias d='dirs -v | head -10'
ls --color -d . &>/dev/null && alias ls='ls --color=tty' || { ls -G . &>/dev/null && alias ls='ls -G' }
alias lsa='ls -lah'
alias l='ls -lah'
alias ll='ls -lh'
alias la='ls -lAh'
## End of Alias

function privateip() {
    ip -o route get 8.8.8.8 | sed -e 's/^.* src \([^ ]*\) .*$/\1/'
}

function showmem() {
    ps -eo size,pid,user,command --sort -size | awk '{ hr=$1/1024 ; printf("%13.2f Mb ",hr) } { for ( x=4 ; x<=NF ; x++ ) { printf("%s ",$x) } print "" }' | grep -v grep | grep $1
}

function zsh-custom-comp() {
    zsh $ZDOTDIR/update-zsh-custom-comp.zsh
}

. /opt/asdf-vm/asdf.sh
eval "$(zoxide init --cmd cd zsh)"
eval "$(atuin init zsh)"
eval "$(starship init zsh)"

if [[ $DISPLAY ]]; then
    # If not running interactively, do not do anything
    [[ $- != *i* ]] && return
    # Only start tmux when opening a "real" terminal emulator
    [[ -z "$TMUX" && "$TERM_PROGRAM" != "vscode" && "$TERMINAL_EMULATOR" != "JetBrains-JediTerm" ]] && eval "$(zellij setup --generate-auto-start zsh)"
fi
