export XDG_CONFIG_HOME="$HOME/.config"
export ZDOTDIR="$XDG_CONFIG_HOME/zsh"

# ZSH History
export HISTFILE="$ZDOTDIR/.zhistory"
export HISTSIZE=50
export SAVEHIST=250

# Wayland
export WLR_RENDERER=vulkan
# export WLR_XWAYLAND=

# Qt
export QT_QPA_PLATFORMTHEME=qt6ct
export QT_WAYLAND_DECORATION=whitesur-gtk

#
export SSH_ASKPASS=/usr/bin/ksshaskpass
export SSH_ASKPASS_REQUIRE=prefer

# Apps
export GCM_CREDENTIAL_STORE=secretservice
export VISUAL=nano
export EDITOR=nano
export SUDO_EDITOR=nano
export RANGER_LOAD_DEFAULT_RC=false
export GCM_CREDENTIAL_STORE=gpg
