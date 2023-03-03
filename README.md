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
| `/dev/mapper/luks_sda3` |`noatime,compress=zstd,subvol=@var`        | Btrfs          | `/var`        |
| `/dev/mapper/luks_sda3` |`noatime,compress=zstd,subvol=@nix`        | Btrfs          | `/nix`        |
| `/dev/sda4`             |                                           | Ext4           | `/home`       |

### Packages
#### Pacman
##### Base
```
base base-devel linux-{firmware,hardened} intel-ucode btrfs-progs ntfs-3g
```

##### Fonts
```
ttf-jetbrains-mono-nerd noto-fonts noto-fonts-emoji ttf-liberation otf-ipafont
```

##### Services
```
udisks2 tlp bluez networkmanager pipewire-{alsa,jack,pulse} wireplumber apparmor nftables usbguard cups
```

##### Desktop
```
foot sway sway{bg,idle,lock} dunst fuzzel grim slurp gammastep xsettingsd polkit-gnome gnome-keyring xorg-xwayland papirus-icon-theme nautilus
```

##### Tools
```
git wget rclone man-db bluez-utils docker docker-compose qemu-base flatpak alsa-utils light android-tools nix atool jq zsh htop tmux ranger \
neovim tcpdump neofetch
```

##### Other
```
xdg-{utils,user-dirs} libnotify python-i3ipc ghostscript xdg-desktop-portal-{gnome,wlr} libappindicator-gtk3 zip unzip unrar p7zip iptables-nft \
gvfs-{mtp,smb} wl-clipboard realtime-privileges
```

#### AUR
```
yay distrobox
```

#### Flatpak
```
org.gnome.eog io.mpv.Mpv org.gnome.Evince com.github.tchx84.Flatseal com.discordapp.Discord org.pulseaudio.pavucontrol org.libreoffice.LibreOffice \
org.mozilla.firefox org.keepassxc.KeePassXC org.gnome.Calendar com.valvesoftware.Steam org.gnome.Characters
```

#### Nix
```
nixpkgs.nodePackages.vscode-langservers-extracted nixpkgs.clang-tools nixpkgs.omnisharp-roslyn nixpkgs.nodePackages.intelephense nixpkgs.ripgrep \
nixpkgs.nodePackages.bash-language-server nixpkgs.sumneko-lua-language-server nixpkgs.nodePackages.typescript-language-server nixpkgs.marksman \
nixpkgs.nodePackages.dockerfile-language-server-nodejs nixpkgs.nodePackages.pyright nixpkgs.arduino-language-server nixpkgs.nodePackages.prettier
```

## Configuration
### Kernel parameters
#### At Kernel startup
We can add them to our Bootloader.
```
lsm=landlock,lockdown,yama,apparmor,bpf
lockdown=confidentiality
cryptdevice=/dev/sda3:luks_root
```

#### At runtime
We need to create a .conf file to `/etc/sysctl.d/`.
```
kernel.unprivileged_userns_clone=1
```

### Systemd
#### System services
```
systemd-timesyncd systemd-resolved systemd-homed docker tlp bluetooth NetworkManager apparmor nftables cups nix-daemon
```

#### User services
```
battery-notifier.timer
```

#### Systemd homed
Creating the user with systemd-homed:
```
homectl create username --storage=luks --shell=/usr/bin/zsh --member-of=users,wheel,video,audio,games,adbusers,nix-users,users
```

## Help
### Use Nintendo GameCube Controller Adapter
We need to create a .rule file to `/etc/udev/rules.d` (51-gcadapter.rules).
```
SUBSYSTEM=="usb", ENV{DEVTYPE}=="usb_device", ATTRS{idVendor}=="057e", ATTRS{idProduct}=="0337", MODE="0666"
```
And then reload Udev rules.
```
udevadm control --reload-rules
```

### Install "Yay"
```
git clone https://aur.archlinux.org/yay-bin.git
cd yay-bin
makepkg -si
```

### Install "Ranger devicons"
```
git clone https://github.com/alexanderjeurissen/ranger_devicons.git \
~/.config/ranger/plugins/ranger_devicons
```

### Install "Packer.nvim"
```
git clone https://github.com/wbthomason/packer.nvim.git \
~/.local/share/nvim/site/pack/packer/start/packer.nvim
```
