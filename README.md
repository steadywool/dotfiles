#### CLI base
zsh / tmux / neovim / ranger / ufw / htop
 
#### GUI base
ly / alacritty / bspwm / sxhkd / polybar / dunst / rofi / i3lock

#### Other
redshift / arch-audit / git / curl / ntp / tlp / udisks2 / scrot / mpv / feh

atool / mediainfo

---
#### Base
base / linux-firmware / linux(-lts) / base-devel

#### Optionnal
zip / unzip / unrar / p7zip / alsa-utils / syslog-ng / mtools / dosfstools / lsb-release / ntfs-3g / exfat-utils / bash-completion / networkmanager / $EDITOR

#### Grub
grub / os-prober / efibootmgr (uefi)

#### Media
gst-plugins-{...} / xf86-video-vesa (cf archlinux wiki about driver) / pulseaudio-{...} / bluez

#### GUI
xorg-server / xorg-xinit / xorg-{...} (xorg-apps)

#### Other
net-tools / acpi / imagemagick / man-db / python-pip

---
#### Font
ttf-ubuntu-font-family

#### Colorscheme
https://github.com/chriskempson/base16 (default dark)

#### AUR manager
https://github.com/morganamilo/paru
```
$ git clone https://aur.archlinux.org/paru.git
$ cd paru
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

#### Forward to syslog
Change this setting `/etc/systemd/journald.conf`
```
#ForwardToSyslog=no
```
to
```
ForwardToSyslog=true
```

#### Keep keyboard config
```
# localectl set-x11-keymap LANG
```

#### Coc.nvim plugin work
Install nodejs & yarn (or npm)

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

- https://github.com/lilydjwg/colorizer

- https://github.com/neoclide/coc.nvim

#### Ranger plugins:
- https://github.com/maximtrp/ranger-archives

#### Zsh plugins:
- https://github.com/zplug/zplug
```
$ curl -sL --proto-redir -all,https https://raw.githubusercontent.com/zplug/installer/master/installer.zsh | zsh
```

- https://github.com/zsh-users/zsh-syntax-highlighting
