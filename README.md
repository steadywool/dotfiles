#### CLI base
zsh / tmux / neovim / ranger / ufw / htop / doas / connman
 
#### GUI base
ly / alacritty / bspwm / sxhkd / polybar / dunst / rofi / i3lock

#### Other
redshift / git / scrot / mpv / feh / cmst / paru

---
#### Base
base / base-devel / linux-firmware / linux(-lts)

#### Disks
ntfs-3g / exfat-utils / dosfstools / mtools

#### Archiving
zip / unzip / unrar / p7zip

#### Grub
grub / os-prober / efibootmgr (uefi)

---
#### Other
alsa-utils / net-tools / acpi / imagemagick / man-db / ntp / tlp / wpa_supplicant / udisks2 / atool

---
#### Change shell
```
$ chsh -s /bin/SHELL
```

#### Add user
```
# useradd -m -g GROUP USER
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

#### Activate connman, ufw & ntp at launch
```
# systemctl enable connman ufw ntpd
```

#### Disable Grub 2 Submenu
Edit this setting `/etc/default/grub`
```
GRUB_DISABLE_SUBMENU=y
```

#### Generate Grub 2 config
```
# grub-mkconfig -o /boot/grub/grub.cfg
```

---
#### Vim plugins
- https://github.com/junegunn/vim-plug
```
$ curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```

- https://github.com/neoclide/coc.nvim

#### Zsh plugins:
- https://github.com/zplug/zplug
```
$ curl -sL --proto-redir -all,https https://raw.githubusercontent.com/zplug/installer/master/installer.zsh | zsh
```

- https://github.com/zsh-users/zsh-completions

- https://github.com/zsh-users/zsh-syntax-highlighting
