
---
### cli base:
**zsh** / **tmux** / **neovim** / **ranger** / mpv / ufw / w3m / htop

### gui base:
ly / **alacritty** / **bspwm** / **sxhkd** / **polybar** / **dunst** / **rofi** / i3lock / feh 

### other:
yay / redshift / arch-audit / git / curl / ntp / tlp / udisks2 

atool / mediainfo 

---
### Software to install during OS installation:
base / base-devel / pacman-contrib / zip / unzip / unrar / p7zip / alsa-utils / syslog-ng / mtools / dosfstools / lsb-release / ntfs-3g / exfat-utils / bash-completion / grub / networkmanager / linux-firmware / linux(-lts) /

### grub:
grub / os-prober / efibootmgr (uefi) /

### media:
gst-plugins-{...} / xf86-video-vesa (cf archlinux wiki about driver) / gvfs-{...} / pulseaudio-{...} / bluez (bluetooth) /

### gui:
xorg-server / xorg-xinit / xorg-apps / 

### other:
net-tools / acpi /

---
**Font:**`ttf-ubuntu-font-family` / `ttf-dejavu`

**GTK theme:** https://github.com/Kaniville/arc-gruvbox-theme

**Colorscheme:** https://github.com/morhetz/gruvbox-contrib

**AUR manager:** https://github.com/Jguer/yay
```
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
```

---
**Change shell:** `chsh -s /bin/SHELL`

**Add user:** `useradd -m -g GROUP USER`

**Deoplete plugin work:**

Install `python-pip`

Enter the `pip3 install pynvim` command 

on nvim or vim, enter `:UpdateRemotePlugins`

---
### Vim plugins:
- https://github.com/junegunn/vim-plug
```
curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs \
https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```

- https://github.com/Shougo/deoplete.nvim

- https://github.com/itchyny/lightline.vim

- https://github.com/dense-analysis/ale

- https://github.com/lilydjwg/colorizer

- https://github.com/nvie/vim-togglemouse

- https://github.com/preservim/nerdtree

- https://github.com/artur-shaik/vim-javacomplete2

- https://github.com/uiiaoo/java-syntax.vim

- https://github.com/hail2u/vim-css3-syntax

- https://github.com/othree/html5.vim

- https://github.com/Kaniville/nvim-terminal

### Ranger plugins:
- https://github.com/maximtrp/ranger-archives

### Zsh plugins:
- https://github.com/maxrodrigo/uz
```
git clone https://github.com/maxrodrigo/uz.git ~/.config/zsh/plugin/uz
```

- https://github.com/zsh-users/zsh-completions

- https://github.com/zsh-users/zsh-autosuggestions 

- https://github.com/zsh-users/zsh-syntax-highlighting

- ttps://github.com/Kaniville/dotfiles *(zsh-tmux-autostart)*
