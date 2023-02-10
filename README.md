# Archlinux dotfiles 🐧

Configuration and tools that I use in my daily life.

![](./src/screenshot.png)

## Installation
See https://wiki.archlinux.org/title/Installation_guide.

### Partitions
| Partition               | Mount Options                             | Filesystem     | Mount Point   |
|-------------------------|-------------------------------------------|----------------|---------------|
| `/dev/sda1`             |`nodev,noexec,nosuid`                      | FAT-32         | `/boot`       |
| `/dev/sda2`             |                                           | Swap           | [SWAP]        |
| `/dev/sda3`             |                                           | Luks2          |               |
| `/dev/mapper/luks_sda3` |`noatime,compress=zstd,subvol=@`           | Btrfs          | `/`           |
| `/dev/mapper/luks_sda3` |`noatime,compress=zstd,subvol=@.snapshots` | Btrfs          | `/.snapshots` |
| `/dev/mapper/luks_sda3` |`noatime,compress=zstd,subvol=@var_cache`  | Btrfs          | `/var/cache`  |
| `/dev/mapper/luks_sda3` |`noatime,compress=zstd,subvol=@var_log`    | Btrfs          | `/var/log`    |
| `/dev/mapper/luks_sda3` |`noatime,compress=zstd,subvol=@var_tmp`    | Btrfs          | `/var/tmp`    |
| `/dev/sda4`             |                                           | Ext4           | `/home`       |

### Packages
#### Base
```
base base-devel linux-{firmware,hardened} intel-ucode btrfs-progs ntfs-3g zip unzip unrar p7zip efibootmgr grub
```

#### Fonts
```
ttf-jetbrains-mono-nerd noto-fonts noto-fonts-emoji ttf-liberation otf-ipafont
```

#### Services
```
udisks2 tlp bluez networkmanager pipewire-{alsa,jack,pulse} wireplumber apparmor nftables usbguard cups
```

#### Terminal
```
zsh htop tmux neovim ranger task wl-clipboard
```

#### Desktop
```
foot sway sway{bg,idle,lock} dunst fuzzel grim slurp gammastep polkit-gnome gnome-keyring xorg-xwayland
```

#### Tools
```
git wget rclone man-db bluez-utils docker docker-compose qemu-base flatpak snapper alsa-utils light android-tools nix atool
```

#### Needed
```
xdg-{utils,user-dirs} libnotify python-i3ipc jq ghostscript xdg-desktop-portal-{gnome,wlr} libappindicator-gtk3
```

#### AUR
```
yay distrobox
```

#### Flatpak
```
org.gnome.eog io.mpv.Mpv org.gnome.Evince com.github.tchx84.Flatseal com.discordapp.Discord org.pulseaudio.pavucontrol org.libreoffice.LibreOffice
```

#### Nix
```
nixpkgs.nodePackages.vscode-langservers-extracted nixpkgs.clang-tools nixpkgs.omnisharp-roslyn nixpkgs.nodePackages.intelephense
nixpkgs.nodePackages.bash-language-server nixpkgs.sumneko-lua-language-server nixpkgs.nodePackages.typescript-language-server nixpkgs.marksman
nixpkgs.nodePackages.dockerfile-language-server-nodejs nixpkgs.nodePackages.pyright nixpkgs.arduino-language-server nixpkgs.nodePackages.prettier
```

## Configuration
### Kernel parameters
#### At Kernel startup
We can add them to our Bootloader.
```
lsm=landlock,lockdown,yama,apparmor,bpf
lockdown=confidentiality
cryptdevice=/dev/sda3:luks_sda3
```

#### At runtime
We need to create a .conf file to `/etc/sysctl.d/`.
```
kernel.unprivileged_userns_clone=1
```

### Systemd
#### Systemd services
```
systemd-timesyncd.service systemd-resolved.service systemd-homed.service tlp.service docker.service bluetooth.service NetworkManager.service apparmor.service nftables.service cups.service
```

#### Systemd timers
```
snapper-timeline.timer snapper-cleanup.timer
```

#### Systemd homed
Creating the user with systemd-homed:
```
homectl create username --storage=luks --shell=/usr/bin/zsh --member-of=wheel,video,audio,games,adbusers
```

## Help
### Use Focusrite Scarlett
https://github.com/Focusrite-Scarlett-on-Linux/sound-usb-kernel-module

### Install "Ranger devicons"
```
git clone https://github.com/alexanderjeurissen/ranger_devicons \
~/.config/ranger/plugins/ranger_devicons
```

### Install "Packer.nvim"
```
git clone https://github.com/wbthomason/packer.nvim \
~/.local/share/nvim/site/pack/packer/start/packer.nvim
```
