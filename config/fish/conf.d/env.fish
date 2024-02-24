#!/usr/bin/env fish

set EDITOR nvim
set VISUAL nvim
set PAGER bat
set BAT_THEME OneHalfDark
set FZF_DEFAULT_OPTS "--preview 'bat --color \"always\" {} 2> /dev/null | head -200'"
