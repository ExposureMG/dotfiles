# ls
alias ls="eza --color=always --icons=always --level=3 --group-directories-first"
# ls all
alias lsa="eza -la --no-time --no-filesize --group-directories-first -g"
# ls tree
alias tree="eza --color=always --icons=always --level=3 --group-directories-first -T"
alias tree-a="eza -la --no-time --no-filesize --color=always --icons=always --level=3 --group-directories-first -T"
# ls devices
alias lsd="eza -la --no-time --no-filesize -g /dev/disk/by-uuid"
# find
alias find="fd"