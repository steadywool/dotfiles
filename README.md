![](Screenshot/screenshot.jpg)

---
#### CLI
zsh / tmux / neovim / ranger / ufw / htop

#### Wayland
alacritty / sway{bg,idle,lock} / dunst / bemenu

light / grim + slurp / gammastep / clipman (wl-clipboard)

#### Other
ttf-anonymous-pro / tlp / atool / polkit-gnome

mpv / imv / android-file-transfer (libmtp) / mupdf / firefox / libreoffice-still

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

#### Sound
pipewire{-pulse,-alsa} / pulseaudio{-alsa} (alternative)

#### Other
alsa-utils / man-db / udisks2 / xdg-user-dirs / git

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

#### Generate Grub 2 config
```
# grub-mkconfig -o /boot/grub/grub.cfg
```

#### Enable os prober
Edit `/etc/default/grub` and add/uncomment:
```
GRUB_DISABLE_OS_PROBER=false
```
Then regenerate grub 2 config.

#### Launch Firefox with wayland
Use this environment variable (Add it to `/etc/environment` work well):
```
MOZ_ENABLE_WAYLAND=1
```

#### Get rid of socket error with sway
Use this environment variable:
```
LIBSEAT_BACKEND=logind
```

#### Launch game bundled with old versions of SDL
Use this environment variable:
```
SDL_VIDEODRIVER=x11
```

#### Enable pipewire
```
$ systemctl --user enable pipewire.service pipewire-pulse.service
```

#### Setup firewall default
Enter these default rules for a personal computer with UFW:
```
# ufw default deny incoming
# ufw default allow outgoing
```

---
#### Vim plugins
- https://github.com/junegunn/vim-plug
```
$ curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```

- https://github.com/neoclide/coc.nvim

- https://github.com/norcalli/nvim-colorizer.lua

#### Zsh plugins:
- https://github.com/zplug/zplug
```
$ curl -sL --proto-redir -all,https https://raw.githubusercontent.com/zplug/installer/master/installer.zsh | zsh
```

- https://github.com/zsh-users/zsh-completions

- https://github.com/zsh-users/zsh-syntax-highlighting

- https://github.com/zsh-users/zsh-autosuggestions
