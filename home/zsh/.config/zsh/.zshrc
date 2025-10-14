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

alias find="fd"
alias mkdir="mkdir -p"
alias update-grub="sudo grub-mkconfig -o /boot/grub/grub.cfg"

# PLUGINS
# Theme
fpath+=( ~/.config/zsh/plugins/agkozak-zsh-prompt/ )
autoload -Uz promptinit; promptinit
prompt agkozak-zsh-prompt

# ExShell Agkozak Prompt
# Make sure the zsh/terminfo module is loaded
(( ${+modules[zsh/terminfo]} )) || zmodload zsh/terminfo
# If 256 colours available, use custom:
if (( ${terminfo[colors]:-0} >= 256 )); then
  AGKOZAK_COLORS_USER_HOST=51
  AGKOZAK_COLORS_PATH=51
  AGKOZAK_COLORS_BRANCH_STATUS=228
  AGKOZAK_COLORS_EXIT_STATUS=174
  AGKOZAK_COLORS_CMD_EXEC_TIME=245
  AGKOZAK_COLORS_VIRTUALENV=188
  AGKOZAK_COLORS_BG_STRING=223
  AGKOZAK_COLORS_HISTORY=51
fi
EXSHELL_PROMPT+=$'%F{39}]-%f%F{33}[%f%F{99}>%f%F{33}]%f%F{39}-[%f'
EXSHELL_PROMPT_START+=$' %F{39}[%f'
EXSHELL_PROMPT_END+=$'%F{39}]%f '
EXSHELL_CHAR+='%F{purple}\ »\ %f'
# Line 1
AGKOZAK_CUSTOM_PROMPT+=$' %F{39}╔═%f'
AGKOZAK_CUSTOM_PROMPT+=$'${EXSHELL_PROMPT_START}'
# Path - Persistant
AGKOZAK_CUSTOM_PROMPT+='%B%F{${AGKOZAK_COLORS_PATH}}%2v%f%b'
AGKOZAK_CUSTOM_PROMPT+=$'${EXSHELL_PROMPT}'
# History
AGKOZAK_CUSTOM_PROMPT+='%B%F{${AGKOZAK_COLORS_HISTORY}}%h%f%b'
AGKOZAK_CUSTOM_PROMPT+=$'${EXSHELL_PROMPT}'
# Background Status 
AGKOZAK_CUSTOM_PROMPT+=$'%(1j.%F{${AGKOZAK_COLORS_BG_STRING}}%jj%f.)'
AGKOZAK_CUSTOM_PROMPT+=$'${EXSHELL_PROMPT_END}'
# Line 2
AGKOZAK_CUSTOM_PROMPT+=$'\n %F{39}╚═%f'
# Username and hostname
AGKOZAK_CUSTOM_PROMPT+=$'${EXSHELL_PROMPT_START}'
AGKOZAK_CUSTOM_PROMPT+='%(!.%S%B.%B%F{${AGKOZAK_COLORS_USER_HOST}})%n%1v%(!.%b%s.%f%b)'
AGKOZAK_CUSTOM_PROMPT+=$'${EXSHELL_PROMPT_END}'
# SHLVL and prompt character
AGKOZAK_CUSTOM_PROMPT+=$'%F{116}[%f%F{99}'
AGKOZAK_CUSTOM_PROMPT+=$'%(4V.:.%(!.#.@))%f'
AGKOZAK_CUSTOM_PROMPT+=$'%F{116}]>%f '
AGKOZAK_COLORS_BRANCH_STATUS=228
# Right prompt
# Git Status
AGKOZAK_CUSTOM_RPROMPT+=$'${EXSHELL_PROMPT_START}'
AGKOZAK_CUSTOM_RPROMPT+='%(3V.%F{${AGKOZAK_COLORS_BRANCH_STATUS}}%3v%f.)'
AGKOZAK_CUSTOM_RPROMPT+=$'${EXSHELL_PROMPT}'
# Venv Indicator
AGKOZAK_CUSTOM_RPROMPT+='%(10V.%F{${AGKOZAK_COLORS_VIRTUALENV}}[%10v]%f.)'
AGKOZAK_CUSTOM_RPROMPT+=$'${EXSHELL_PROMPT_END}'
AGKOZAK_BLANK_LINES=1

# completions
fpath=(~/.config/zsh/plugins/zsh-completions/src $fpath)

# fzf
source <(fzf --zsh)
autoload -U compinit; compinit
source ~/.config/zsh/plugins/fzf-tab/fzf-tab.plugin.zsh

# Fast Syntax Highlighting
source ~/.config/zsh/plugins/fast-syntax-highlighting/fast-syntax-highlighting.plugin.zsh

# Shell Start
pfetch
