#### CLI
zsh / tmux / neovim / ranger / ufw / htop

#### X11
alacritty / bspwm / sxhkd / polybar / dunst / rofi / i3lock

feh / scrot / light / redshift / ly

#### Wayland
alacritty / sway / swaybg / swayidle / dunst / wofi / swaylock

swaybg / light / grim / gammastep / ly

#### Other
git / paru / ttf-anonymous-pro / atool / android-file-transfer / imv / mpv

---
#### Base
base / base-devel / linux-firmware / linux{-lts}

#### Disks
ntfs-3g / exfat-utils / dosfstools

#### Archiving
zip / unzip / unrar / p7zip

#### Boot loader
os-prober / efibootmgr (uefi) / grub (or other)

#### Printer
cups / hplip (for HP printer) / foomatic-db{-nonfree}

#### Network
networkmanager / connman (alternative) / iwd / wpa_supplicant

#### Sound
pulseaudio{-alsa} / pipewire{-pulse,-alsa} (alternative)

#### Other
alsa-utils / iproute2 / imagemagick / man-db / ntp / tlp / udisks2 / xdg-user-dirs / ffmpeg / libmtp

---
#### Change shell
```
$ chsh -s /bin/SHELL
```

#### Set Hostname
Create this file `/etc/hostname` and write the hostname of your choice.

#### Create a new user and add it to a group
```
# useradd -m -g GROUP USER
```

#### Add a user to a group
```
# usermod -a -G GROUP USER
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

- https://github.com/zsh-users/zsh-autosuggestions
