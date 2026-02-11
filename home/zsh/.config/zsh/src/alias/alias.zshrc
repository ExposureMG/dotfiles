# Stow link command
alias stowaway="stow -vt ~ *"

# Aliases
# d = dir only, f = file only
# ls
alias ls="eza --color=always --icons=always --level=3 --group-directories-first"
# ls all
alias lsa="eza -la --no-time --no-filesize --group-directories-first -g"
# ls tree
alias tree="eza --color=always --icons=always --level=3 --group-directories-first -T"
alias tree-a="eza -la --no-time --no-filesize --color=always --icons=always --level=3 --group-directories-first -T"
# ls devices
alias lsd="eza -la --no-time --no-filesize -g /dev/disk/by-uuid"

# Arch Linux Pacman
# Install
alias pacin="sudo pacman -S"
# Update
alias pacup="sudo pacman -Syu"
# Remove with Deps
alias pacrs="sudo pacman -Rss"
# Remove
alias pacre="sudo pacman -R"
# Paru
alias paru="paru --bottomup"

# Flatpak
alias fpkin="flatpak install Flathub"
alias fpks="flatpak search"
alias fpkre="flatpak uninstall"
alias fpkill="flatpak kill"

# Nix
alias nixpkg="nix-env -iA"
alias nixrem="nix-env --uninstall"

# SystemD
alias sc-on="sudo systemctl start"
alias sc-off="sudo systemctl stop"
alias sc-e="sudo systemctl enable"
alias sc-en="sudo systemctl enable --now"
alias sc-d="sudo systemctl disable"
alias sc-dn="sudo systemctl disable --now"
alias sc-s="sudo systemctl status"

# SystemD User
alias usc-on="systemctl --user start"
alias usc-off="systemctl --user stop"
alias usc-e="systemctl --user enable"
alias usc-en="systemctl --user enable --now"
alias usc-d="systemctl --suer disable"
alias usc-dn="systemctl --user disable --now"
alias usc-s="systemctl --user status"

# Git
alias gclone="git clone"
alias gadd="git add"
alias gcom="git commit"
alias grm="git rm"
alias gpush="git push"
alias gcommit="git add * && git commit"

# Apps
alias find="fd"
alias mkdir="mkdir -p"
alias update-grub="sudo grub-mkconfig -o /boot/grub/grub.cfg"
