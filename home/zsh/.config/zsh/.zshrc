# Import alases
source ~/.config/zsh/src/alias/alias.zshrc
# Import agkozak theme
if [ -e ~/.config/zsh/src/themes/agkozak-zsh-prompt/theme.zshrc ]; then
    fpath+=( ~/.config/zsh/src/themes/agkozak-zsh-prompt )
    autoload promptinit; promptinit
    prompt agkozak-zsh-prompt
    source ~/.config/zsh/src/themes/agkozak-zsh-prompt/theme.zshrc
else
    echo "Ex-Shell Agkozak Not found! Falling back to default zsh theme"
fi

# zsh-completions
if [ -e ~/.config/zsh/src/plugins/completions ]; then fpath=(~/.config/zsh/src/plugins/completions/src $fpath); fi

# Check fzf /usr/bin then nix
if [ -e /usr/bin/fzf ]; then
    . <(/usr/bin/fzf --zsh)
    autoload -U compinit; compinit
    . ~/.config/zsh/src/plugins/fzf/fzf-tab.plugin.zsh
elif [ -e ~/.nix-profile/bin/fzf ]; then
    . <(/home/deck/.nix-profile/bin/fzf --zsh)
    autoload -U compinit; compinit
    . ~/.config/zsh/src/plugins/fzf/fzf-tab.plugin.zsh
fi

# Fast Syntax Highlighting
if [ -e ~/.config/zsh/src/plugins/fast-syntax-highlighting/fast-syntax-highlighting.plugin.zsh ]; then source ~/.config/zsh/src/plugins/fast-syntax-highlighting/fast-syntax-highlighting.plugin.zsh; fi

# miniconda3
[ -f /opt/miniconda3/etc/profile.d/conda.sh ] && source /opt/miniconda3/etc/profile.d/conda.sh

# Nix
if [ -e /home/deck/.nix-profile/etc/profile.d/nix.sh ]; then 
    . /home/deck/.nix-profile/etc/profile.d/nix.sh;
    export EXSHELL_NIX=true
fi

# brew
if [[ -d /home/linuxbrew/.linuxbrew && $- == *i* ]] ; then
  eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv | grep -Ev '\bPATH=')"
  HOMEBREW_PREFIX="${HOMEBREW_PREFIX:-/home/linuxbrew/.linuxbrew}"
  export PATH="${PATH}:${HOMEBREW_PREFIX}/bin:${HOMEBREW_PREFIX}/sbin"
  export EXSHELL_BREW=true
fi

. "$HOME/.cargo/env"