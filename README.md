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

#### Launch Firefox with wayland
Use this environment variable (Add it to `/etc/environment` work well):
```
MOZ_ENABLE_WAYLAND=1
```

#### Setup firewall default
Enter these default rules for a personal computer with UFW:
```
# ufw default deny incoming
# ufw default allow outgoing
```

---
#### Paq-nvim
```
$ git clone --depth=1 https://github.com/savq/paq-nvim.git \
    "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/pack/paqs/start/paq-nvim
```
