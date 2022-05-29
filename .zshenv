# ZSH
ZHOME=$HOME/.config/zsh
ZPLUG=$HOME/.config/zsh/plugins

HISTFILE=$HOME/.zhistory

export TMOUT=900

# Themes
#export QT_QPA_PLATFORMTHEME=qt5ct
export GTK_THEME=$(grep 'gtk-theme-name' "$HOME/.config/gtk-4.0/settings.ini" | cut -d '=' -f2)

# Variables
export EDITOR=nvim
export VISUAL=nvim
export PAGER=less

# SSH
export SSH_AUTH_SOCK

# Proxy
#export http_proxy=
#export https_proxy=

# Wayland / Sway
export MOZ_DBUS_REMOTE=1
export MOZ_ENABLE_WAYLAND=1
export _JAVA_AWT_WM_NONREPARENTING=1
export LIBSEAT_BACKEND=logind

# Bemenu
export BEMENU_OPTS="-w -i -H '23' --fn 'JetBrains Mono Regular 9' --tb '#000000' --tf '#ebdbb2' --fb '#000000' --nb '#000000' --nf '#ebdbb2' --hb '#83a598' --hf '#000000'"
