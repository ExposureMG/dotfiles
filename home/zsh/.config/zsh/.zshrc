source $ZDOTDIR/plugins/antigen/antigen.zsh

antigen bundle zsh-users/zsh-syntax-highlighting

antigen bundle zsh-users/zsh-autosuggestions

antigen bundle zsh-users/zsh-completions

antigen theme duellj

antigen apply

source /usr/share/doc/find-the-command/ftc.zsh

# Stow link command
alias stowaway="stow -vt ~ *"

# Aliases
# d = dir only, f = file only
alias ls="eza --color=always --icons=always --level=3 --group-directories-first"
alias dls="eza --color=always --icons=always --level=3 --group-directories-first -D"
alias fls="eza --color=always --icons=always --level=3 --group-directories-first -f"

alias lsa="eza -la --no-time --no-filesize --group-directories-first -g"
alias dlsa="eza -la --no-time --no-filesize --group-directories-first -g -D"
alias flsa="eza -la --no-time --no-filesize --group-directories-first -g -f"

alias tree="eza --color=always --icons=always --level=3 --group-directories-first -T"
alias dtree="eza --color=always --icons=always --level=3 --group-directories-first -T -D"
alias ftree="eza --color=always --icons=always --level=3 --group-directories-first -T -f"

# Pacman
# Install
alias pacin="sudo pacman -S"
# Update
alias pacup="sudo pacman -Syu"
# Remove with Deps
alias pacrs="sudo pacman -Rss"
# Remove
alias pacre="sudo pacman -R"
# "Clean" Search orphan packages
alias pacclean="sudo pacman -Qdt"
# "Cleaner" Remove orphan packages
alias paccleanr="sudo pacman -R"
# "Deep Clean" Search installed orphan packages
alias paccleand="sudo pacman -Qet"

# Pacman Query
# Package Info
alias pacqo="pacman -Si"
# Package Query
alias pacqos="pacman -Ss"
# Local Package Info
alias pacqi="pacman -Qi"


# Local Package Query
alias pacqis="pacman -Qs"
# Query for files created by package
alias pacqf="pkgfile -l"

alias sc-on="sudo systemctl start"
alias sc-off="sudo systemctl stop"
alias sc-e="sudo systemctl enable"
alias sc-en="sudo systemctl enable --now"
alias sc-d="sudo systemctl disable"
alias sc-dn="sudo systemctl disable --now"

alias usc-on="systemctl --user start"
alias usc-off="systemctl --user stop"
alias usc-e="systemctl --user enable"
alias usc-en="systemctl --user enable --now"
alias usc-d="systemctl --suer disable"
alias usc-dn="systemctl --user disable --now"

alias mkdir="mkdir -p"

alias fuzzel="fuzzel --launch-prefix='app2unit --fuzzel-compat --'"
alias runapp="app2unit"
