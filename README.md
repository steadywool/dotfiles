*for x86-64 architectures*

ranger / neovim / zsh / alacritty / tmux / rofi / polybar / i3,{bspwm + sxhkd} / dunst / mpv /

ufw / yay / atool / htop / ntp / git / curl / tlp / i3lock / feh / bluez-utils / transmission-cli / moc / mupdf / youtube-dl / gnome-screenshot / links

---
**Software to install during OS installation:**

net-tools / acpi / base / base-devel / pacman-contrib / zip / unzip / unrar / p7zip / alsa-utils / syslog-ng / mtools / dosfstools / lsb-release / ntfs-3g / exfat-utils / bash-completion / grub / networkmanager / linyx-firmware / linux(-lts) /

**grub:**

grub / os-prober / efibootmgr (uefi) /

**media:**

gst-plugins-{...} / xf86-video-vesa (cf archlinux wiki about driver) / gvfs-{...} / pulseaudio-{...} / bluez (bluetooth) /

**gui:**

xorg-server / xorg-xinit / xorg-apps / 

---
**Font:**`ttf-ubuntu-font-family` / `ttf-dejavu`

**GTK theme:** https://github.com/Kaniville/Materia-gtk-gruvbox

**Icons:** https://github.com/PapirusDevelopmentTeam/papirus-icon-theme

**Colorscheme:** https://github.com/morhetz/gruvbox-contrib

**AUR manager:** https://github.com/Jguer/yay
```
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
```

**Vim plugin manager:** https://github.com/junegunn/vim-plug
```
curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs \
https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```

---
**Change shell:** `chsh -s /bin/SHELL`

**Add user:** `useradd -m -g GROUP USER`

**Deoplete plugin work:**

Install `python-pip`

Enter the `pip3 install pynvim` command 

on nvim or vim, enter `:UpdateRemotePlugins`

---
**Vim plugins:**

- https://github.com/junegunn/vim-plug

- https://github.com/Shougo/deoplete.nvim

- https://github.com/itchyny/lightline.vim

- https://github.com/dense-analysis/ale

- https://github.com/lilydjwg/colorizer

- https://github.com/nvie/vim-togglemouse

- https://github.com/preservim/nerdtree

- https://github.com/majutsushi/tagbar

- https://github.com/artur-shaik/vim-javacomplete2

- https://github.com/uiiaoo/java-syntax.vim

- https://github.com/hail2u/vim-css3-syntax

- https://github.com/othree/html5.vim

**Ranger plugins:**

- https://github.com/maximtrp/ranger-archives

**Zsh plugins:**

- https://github.com/ohmyzsh/ohmyzsh

- https://github.com/Kaniville/dotfiles ;)
