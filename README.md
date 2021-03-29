#### CLI base
zsh / tmux / neovim / ranger / ufw / htop / doas
 
#### GUI base
ly / alacritty / bspwm / sxhkd / polybar / dunst / rofi / i3lock

#### Other
redshift / arch-audit / git / curl / ntp / tlp / udisks2 / scrot / mpv / feh / atool

---
#### Base
base / base-devel / linux-firmware / linux(-lts)

#### Optionnal
alsa-utils / syslog-ng / mtools / dosfstools / lsb-release / ntfs-3g / exfat-utils / $EDITOR

#### Archiving
zip / unzip / unrar / p7zip

#### Grub
grub / os-prober / efibootmgr (uefi)

#### Other
net-tools / acpi / imagemagick / man-db / python-pip / networkmanager

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

#### Use doas with paru
Edit this setting `/etc/paru.conf`:
```
[bin]
Sudo = doas
```

---
#### Vim plugins
- https://github.com/junegunn/vim-plug
```
$ curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```

- https://github.com/lilydjwg/colorizer

- https://github.com/neoclide/coc.nvim

#### Zsh plugins:
- https://github.com/zplug/zplug
```
$ curl -sL --proto-redir -all,https https://raw.githubusercontent.com/zplug/installer/master/installer.zsh | zsh
```

- https://github.com/zsh-users/zsh-completions

- https://github.com/zsh-users/zsh-syntax-highlighting
