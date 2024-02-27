alias k="kubctl"
alias kk="kustomize"
alias kctx="kubectx"
alias kns="kubens"

if type -q nvim
    alias vi='nvim'
    alias vim='nvim'
    alias v="nvim ."
end
alias dps-name="docker ps --format '{{.Names}}'"
alias aws-sso="aws sso login"
alias get-touchpad="xinput list | grep Touchpad"
# Common aliases
alias disk="df -H | grep -vE '^Filesystem|tmpfs|cdrom'"
alias :q="exit"
# List directory contents
alias d='dirs -v | head -10'
# ls --color -d . &>/dev/null && alias ls='ls --color=tty' || { ls -G . &>/dev/null && alias ls='ls -G' }
alias lsa='ls -lah'
alias l='ls -lah'
alias ll='ls -lh'
alias la='ls -lAh'

function privateip
    ip -o route get 8.8.8.8 | sed -e 's/^.* src \([^ ]*\) .*$/\1/'
end

function showmem
    ps -eo size,pid,user,command --sort -size | awk '{ hr=$1/1024 ; printf("%13.2f Mb ",hr) } { for ( x=4 ; x<=NF ; x++ ) { printf("%s ",$x) } print "" }' | grep -v grep | grep $argv
end