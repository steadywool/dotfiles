![](Screenshot/screenshot.jpg)

---
#### CLI
zsh / neovim / ranger / ufw / htop / git

#### Wayland
kitty / sway{bg,idle,lock} / dunst / bemenu / j4-dmenu-desktop

light / grim + slurp / gammastep / clipman (wl-clipboard)

#### Other
tlp / atool / polkit-gnome / rclone / snapper

imv / mpv / mupdf

---
#### Base
base / base-devel / linux-firmware / linux{-lts} / intel-ucode

#### Disks
ntfs-3g / exfat-utils / dosfstools / mtools / btrfs-progs

#### Archiving
zip / unzip / unrar / p7zip

#### Boot loader
os-prober / efibootmgr (uefi) / grub / grub-btrfs

#### Sound
pipewire{-pulse,-alsa,-jack}

#### Other
alsa-utils / man-db / udisks2 / xdg-user-dirs / ffmpeg / libmtp / libappindicator-gtk3

---
#### Change shell
```
$ chsh -s /bin/SHELL
```

#### Create a new user and add it to a group
```
# useradd -m -g GROUP USER
```

#### Add a user to a group
```
# usermod -a -G GROUP USER
```

#### Generate Grub config
```
# grub-mkconfig -o /boot/grub/grub.cfg
```

#### Enable os prober
Edit `/etc/default/grub` and add/uncomment:
```
GRUB_DISABLE_OS_PROBER=false
```
Then regenerate grub 2 config.

#### Mount BTRFS subvolumes
Useful for creating subvolumes:
```
# mount -o subvolid=0 /dev/sda3 /mnt
```

#### Mount BTRFS subvolume to directory
```
mount -o noatime,commit=120,compress=zstd,space_cache,subvol=@ /dev/sda3 /mnt
```

#### Launch Firefox with wayland
Use this environment variable (Add it to `/etc/environment` work well):
```
MOZ_ENABLE_WAYLAND=1
```

#### Launch game bundled with old versions of SDL
Use this environment variable:
```
SDL_VIDEODRIVER=x11
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

- https://github.com/norcalli/nvim-colorizer.lua

- https://github.com/neoclide/coc.nvim

#### Zsh plugins:
- https://github.com/zplug/zplug
```
$ curl -sL --proto-redir -all,https https://raw.githubusercontent.com/zplug/installer/master/installer.zsh | zsh
```

- https://github.com/zsh-users/zsh-completions

- https://github.com/zsh-users/zsh-syntax-highlighting

- https://github.com/zsh-users/zsh-autosuggestions
