### CLI
zsh / neovim / ranger / htop / cronie / tmux / task

### Wayland
kitty / sway{bg,idle,lock} / dunst / bemenu / j4-dmenu-desktop<sup>AUR</sup>

light / grim + slurp / gammastep / wl-clipboard

### Appearance
ttf-jetbrains-mono / nerd-fonts-jetbrains-mono<sup>AUR</sup> / noto-fonts{-emoji} / pop-gtk-theme / papirus-icon-theme

---
### Base
base / base-devel / linux-firmware / linux-hardened / intel-ucode

### Disks
ntfs-3g / exfat-utils / dosfstools / mtools / btrfs-progs

### Archiving
zip / unzip / unrar / p7zip

### Boot loader
efibootmgr (uefi) / grub

### Multimedia
pipewire / pipewire-alsa / pipewire-jack / pipewire-pulse / pipewire-media-session

gst-plugin-pipewire / gst-libav / gst-plugins-{base,good,bad,ugly}

### Security
apparmor / nftables / bubblewrap-suid / usbguard

---
### Network
nmap / tcpdump / lsof / bmon / iproute2

### Tools
udisks2 / android-tools / bluez{-utils} / man-db / tlp / xdg-user-dirs / perl-image-exiftool

khunter / arch-audit / realtime-privileges / flatpak / ripgrep / jq / libappindicator-gtk3

mupdf / imv / mpv / polkit-gnome / gnome-keyring / libnotify / rsync / rclone

---
### Enable AppArmor as default security model
Add this line to `/etc/default/grub`:
```
GRUB_CMDLINE_LINUX="lsm=landlock,lockdown,yama,apparmor,bpf"
```

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

### Use Nftables instead of Iptables
Replace `iptables` package by `iptables-nft`

### Mount Options
root partition use `defaults`, `compress=zstd`, `noatime` & `subvol=SUBVOLUME`.

/boot use `nodev`, `nosuid` & `noexec`.

/home encrypted partition use `nodev` & `nosuid`.

Don't forget to create the Swap partition.

### TLP configuration
Edit `/etc/tlp.conf` and replace `1` by `0`:
```
USB_AUTOSUSPEND=0
```

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
