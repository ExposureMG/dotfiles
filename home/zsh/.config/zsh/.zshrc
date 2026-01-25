# Import alases
source ~/.config/zsh/alias.zshrc

# Import agkozak theme
source ~/.config/zsh/plugins/agkozak-zsh-prompt/theme.zshrc

# completions
fpath=(~/.config/zsh/plugins/zsh-completions/src $fpath)

# fzf
source <(/home/deck/.nix-profile/bin/fzf --zsh)
autoload -U compinit; compinit
source ~/.config/zsh/plugins/fzf-tab/fzf-tab.plugin.zsh

# Fast Syntax Highlighting
source ~/.config/zsh/plugins/fast-syntax-highlighting/fast-syntax-highlighting.plugin.zsh

# miniconda3
[ -f /opt/miniconda3/etc/profile.d/conda.sh ] && source /opt/miniconda3/etc/profile.d/conda.sh

# Nix
if [ -e /home/deck/.nix-profile/etc/profile.d/nix.sh ]; then . /home/deck/.nix-profile/etc/profile.d/nix.sh; fi
