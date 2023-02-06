# Archlinux dotfiles 🐧

Configuration and tools that I use in my daily life.

![](./src/screenshot.jpg)

## Packages
#### Base
```
base base-devel linux-{firmware,hardened} intel-ucode btrfs-progs zip unzip unrar p7zip efibootmgr grub
```

#### Fonts
```
ttf-jetbrains-mono-nerd noto-fonts noto-fonts-emoji ttf-liberation
```

#### Services
```
udisks2 tlp bluez networkmanager light pipewire{-alsa,-jack,-pulse} wireplumber apparmor nftables usbguard
```

#### Terminal
```
git android-tools zsh htop tmux neovim ranger task wl-clipboard
```

#### Desktop
```
foot sway{bg,idle,lock} dunst fuzzel grim slurp gammastep polkit-gnome gnome-keyring papirus-icon-theme
```

#### Applications
```
distrobox podman qemu-base swayimg mpv flatpak mupdf
```

#### Tools
```
libnotify xdg-{utils,user-dirs} python-i3ipc jq rclone alsa-utils man-db bluez-utils
```

## Configuration
See https://wiki.archlinux.org/title/Installation_guide.

#### Partitions
| Partition               | Mount Options                                   | Filesystem     | Mount Point         |
|-------------------------|-------------------------------------------------|----------------|---------------------|
| `/dev/sda1`             |`nodev,noexec,nosuid`                            | FAT-32         | `/boot`             |
| `/dev/sda2`             |                                                 | Swap           | [SWAP]              |
| `/dev/sda3`             |                                                 | Luks2          |                     |
| `/dev/mapper/luks_sda3` |`noatime,compress=zstd,subvol=@`                 | Btrfs          | `/`                 |
| `/dev/mapper/luks_sda3` |`noatime,compress=zstd,subvol=@home`             | Btrfs          | `/home`             |
| `/dev/mapper/luks_sda3` |`noatime,compress=zstd,subvol=@.snapshots`       | Btrfs          | `/.snapshots`       |
| `/dev/mapper/luks_sda3` |`noatime,compress=zstd,subvol=@var_log`          | Btrfs          | `/var/log`          |
| `/dev/mapper/luks_sda3` |`noatime,compress=zstd,subvol=@var_cache_pacman` | Btrfs          | `/var/cache/pacman` |

#### Kernel parameters
```
lsm=landlock,lockdown,yama,apparmor,bpf
lockdown=confidentiality
cryptdevice=/dev/sda3:luks_sda3
```

#### Kernel modules
```
kernel.unprivileged_userns_clone=1
```

## Help
#### Use Focusrite Scarlett
https://github.com/Focusrite-Scarlett-on-Linux/sound-usb-kernel-module

#### Install "Ranger devicons"
```
git clone https://github.com/alexanderjeurissen/ranger_devicons \
~/.config/ranger/plugins/ranger_devicons
```

#### Install "Packer.nvim"
```
git clone https://github.com/wbthomason/packer.nvim \
~/.local/share/nvim/site/pack/packer/start/packer.nvim
```
