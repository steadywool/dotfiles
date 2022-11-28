### CLI
udisks2 / tlp / rclone / bluez{-utils} / git / docker / android-tools / cronie / zsh / htop / tmux / neovim / ranger / light / task

### Wayland
foot / sway{bg,idle,lock} / dunst / bemenu{-wayland} / j4-dmenu-desktop / grim + slurp / wl-clipboard / kanshi

mupdf / swayimg / mpv / polkit-gnome / gnome-keyring / gammastep / scrcpy

### Appearance
ttf-jetbrains-mono / nerd-fonts-jetbrains-mono<sup>AUR</sup> / noto-fonts{-emoji} / otf-ipafont / papirus-icon-theme

### Other
libnotify / xdg-user-dirs / perl-image-exiftool / realtime-privileges / python-i3ipc / ripgrep / man-db / jq / libappindicator-gtk3

---
### Base
base / base-devel / linux-{firmware,hardened,hardened-headers} / dkms / intel-ucode

### Disks
ntfs-3g / exfat-utils / dosfstools / mtools / btrfs-progs

### Archiving
zip / unzip / unrar / p7zip

### Boot loader
efibootmgr (uefi) / grub

### Multimedia
pipewire{-alsa,-jack,-pulse} / wireplumber

gst-plugin-pipewire / gst-libav / gst-plugins-{base,good,ugly}

### Security
apparmor / iptables-nft / nftables / usbguard / arch-audit / flatpak / firejail / lkrg-dkms<sup>AUR</sup>

### Network
nmap / tcpdump / lsof / networkmanager

---
### Enable AppArmor as default security model
Add this line to `/etc/default/grub`:
```
GRUB_CMDLINE_LINUX="lsm=landlock,lockdown,yama,apparmor,bpf"
```

### Use encrypted /
Add `keyboard`, `keymap` & `encrypt` hooks to `/etc/mkinitcpio.conf`

Add this line to `/etc/default/grub`:
```
GRUB_CMDLINE_LINUX="cryptdevice=/dev/sda3:luksroot"
```

### Load LKRG at boot
Create `*.conf` at `/etc/modules-load.d/` and add:
```
lkrg
```

### Enable unprivileged user namespace
Create `*.conf` at `/etc/sysctl.d/` and add:
```
kernel.unprivileged_userns_clone=1
```

### Disabling Avahi
Mask `avahi-daemon.service`, `avahi-daemon.socket` & `avahi-dnsconfd.service` with systemctl

### Ssh configuration
Add these lines to `/etc/ssh/sshd_config`:
```
Protocol 2
PermitRootLogin no
PasswordAuthentication no
```

### Usbguard configuration
```
# usbguard generate-policy > /etc/usbguard/rules.conf
```

### Disable root account
```
# passwd --lock root
```

### Create the default user
```
# useradd -g users -G wheel -s /bin/zsh kani
```

### Mount options
- `/dev/sda1` (FAT-32) is `/boot` and use `nodev`, `noexec` & `nosuid`

- `/dev/sda2` is the `swap`

- `/dev/sda3` (LUKS+BTRFS) is an encrypted `/` and use `noatime`, `compress=zstd` & `space_cache=v2`

- Subvolumes are `/`, `/home`, `/var/log`, `/.snapshots` & `/var/cache/pacman`

### Install "Ranger devicons"
```
$ git clone https://github.com/alexanderjeurissen/ranger_devicons \
~/.config/ranger/plugins/ranger_devicons
```

### Install "Packer.nvim"
```
$ git clone https://github.com/wbthomason/packer.nvim \
~/.local/share/nvim/site/pack/packer/start/packer.nvim
```
