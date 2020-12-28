---
![](/Screenshot/screenshot_1.png)

![](/Screenshot/screenshot_2.png)

---
#### CLI base
zsh / tmux / neovim / ranger / mpv / ufw / w3m / htop /
 
#### GUI base
ly / alacritty / bspwm / sxhkd / polybar / dunst / rofi / i3lock / feh /

#### Other
paru / redshift / arch-audit / git / curl / ntp / tlp / udisks2 / scrot /

atool / mediainfo /

---
#### Base
base / linux-firmware / linux(-lts) / base-devel /

#### Optionnal
zip / unzip / unrar / p7zip / alsa-utils / syslog-ng / mtools / dosfstools / lsb-release / ntfs-3g / exfat-utils / bash-completion / networkmanager / $EDITOR /

#### Grub
grub / os-prober / efibootmgr (uefi) /

#### Media
gst-plugins-{...} / xf86-video-vesa (cf archlinux wiki about driver) / pulseaudio-{...} / bluez /

#### GUI
xorg-server / xorg-xinit / xorg-{...} (xorg-apps) / 

#### Other
net-tools / acpi /

---
#### Font
ttf-ubuntu-font-family / ttf-twemoji-color

#### GTK theme
https://github.com/Kaniville/oomox-gruvbox-theme

#### Colorscheme
https://github.com/gruvbox-community/gruvbox

#### AUR manager
https://github.com/Jguer/yay
```
$ git clone https://aur.archlinux.org/yay-bin.git
$ cd yay-bin
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

- https://github.com/itchyny/lightline.vim

- https://github.com/lilydjwg/colorizer

- https://github.com/preservim/tagbar

- https://github.com/neoclide/coc.nvim

#### Ranger plugins:
- https://github.com/maximtrp/ranger-archives

#### Zsh plugins:
- https://github.com/zplug/zplug
```
$ curl -sL --proto-redir -all,https https://raw.githubusercontent.com/zplug/installer/master/installer.zsh | zsh
```

- https://github.com/woefe/git-prompt.zsh

- https://github.com/zsh-users/zsh-completions

- https://github.com/zsh-users/zsh-autosuggestions 

- https://github.com/zsh-users/zsh-syntax-highlighting
