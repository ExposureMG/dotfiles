# Load Antigen
source $ZSHPLDIR/antigen/antigen.zsh

alias stowaway="stow -vt ~ *"

# Load O-M-ZSH
antigen use oh-my-zsh

# Load O-M-ZSH Plugins
antigen bundle command-not-found
antigen bundle common-aliases
antigen bundle archlinux
antigen bundle colorize
antigen bundle colored-man-pages
antigen bundle copypath
antigen bundle git
antigen bundle gitfast
antigen bundle sudo
antigen bundle systemd

# Load Other Plugins
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle zsh-users/zsh-completions

# Load Theme
antigen theme duellj

# Finish
antigen apply
