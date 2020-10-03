---
#### CLI base
zsh / tmux / neovim / ranger / mpv / ufw / w3m / htop /
 
#### GUI base
ly / alacritty / bspwm / sxhkd / polybar / dunst / rofi / i3lock / feh /

#### Other
yay / redshift / arch-audit / git / curl / ntp / tlp / udisks2 / 

atool / mediainfo /

---
#### Base
base / base-devel / pacman-contrib / zip / unzip / unrar / p7zip / alsa-utils / syslog-ng / mtools / dosfstools / lsb-release / ntfs-3g / exfat-utils / bash-completion / grub / networkmanager / linux-firmware / linux(-lts) /

#### Grub
grub / os-prober / efibootmgr (uefi) /

#### Media
gst-plugins-{...} / xf86-video-vesa (cf archlinux wiki about driver) / gvfs-{...} / pulseaudio-{...} / bluez (bluetooth) /

#### GUI
xorg-server / xorg-xinit / xorg-apps / 

#### Other
net-tools / acpi /

---
#### Font
ttf-ubuntu-font-family / ttf-dejavu /

#### GTK theme
https://github.com/Kaniville/arc-gruvbox-theme

#### Colorscheme
https://github.com/morhetz/gruvbox-contrib

#### AUR manager
https://github.com/Jguer/yay
```
$ git clone https://aur.archlinux.org/yay.git
$ cd yay
$ makepkg -si
```

---
#### Change shell
```
$ chsh -s /bin/SHELL
```

#### Add user
```
# useradd -m -g GROUP USER
```

#### Deoplete plugin work
Install python-pip and enter the following command:
```
# pip3 install pynvim
```

#### Deoplete-clang plugin work
Install clang and cmake

#### Tagbar plugin work
Install ctags (universal-ctags)

#### Disable power button
Edit this setting `/etc/systemd/logind.conf`:
```
HandlePowerKey=ignore
``` 

---
#### Vim plugins
- https://github.com/junegunn/vim-plug
```
$ curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```

- https://github.com/Shougo/deoplete.nvim

- https://github.com/itchyny/lightline.vim

- https://github.com/dense-analysis/ale

- https://github.com/lilydjwg/colorizer

- https://github.com/preservim/nerdtree

- https://github.com/artur-shaik/vim-javacomplete2

- https://github.com/uiiaoo/java-syntax.vim

- https://github.com/hail2u/vim-css3-syntax

- https://github.com/othree/html5.vim

- https://github.com/Kaniville/nvim-terminal

- https://github.com/preservim/tagbar

- https://github.com/octol/vim-cpp-enhanced-highlighting

- https://github.com/deoplete-plugins/deoplete-clang

#### Ranger plugins:
- https://github.com/maximtrp/ranger-archives

#### Zsh plugins:
- https://github.com/Kaniville/uz
```
$ git clone https://github.com/Kaniville/uz.git ~/.config/zsh/plugins/uz
```

- https://github.com/zsh-users/zsh-completions

- https://github.com/zsh-users/zsh-autosuggestions 

- https://github.com/zsh-users/zsh-syntax-highlighting
