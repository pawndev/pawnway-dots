#!/usr/bin/env fish

set ZELLIJ_AUTO_EXIT false
set ZELLIJ_AUTO_ATTACH false

set -U fish_greeting "" # disable greeting message
set EDITOR nvim
set VISUAL nvim
set PAGER bat
set BAT_THEME OneHalfDark
set FZF_DEFAULT_OPTS "--preview 'bat --color \"always\" {} 2> /dev/null | head -200'"

set ABBR_TIPS_PROMPT "\nTips: \e[1m{{ .abbr }}\e[0m => {{ .cmd }}"
