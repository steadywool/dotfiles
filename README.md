### CLI
zsh / neovim / ranger / htop / cronie / tmux / task

### Wayland
alacritty || kitty / sway{bg,idle,lock} / dunst / bemenu / j4-dmenu-desktop<sup>AUR</sup>

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
apparmor / nftables / bubblewrap-suid / usbguard / libpwquality

---
### Tools
udisks2 / android-tools / bluez{-utils} / man-db / tlp / xdg-user-dirs

khunter / arch-audit / realtime-privileges / flatpak

nmap / ripgrep / cpupower / gamemode / jq

mupdf / imv / mpv / polkit-gnome / gnome-keyring / libappindicator-gtk3

---
### Enable AppArmor as default security model
Add this line to `/etc/default/grub`:
```
GRUB_CMDLINE_LINUX="lsm=landlock,lockdown,yama,apparmor,bpf"
```

### Max number of processes
Add these lines to `/etc/security/limits.conf`:
```
* soft nproc 1000
* hard nproc 1500
```

### Ssh configuration
Add these lines to `/etc/ssh/sshd_config`:
```
Protocol 2
PermitRootLogin no
```
And this line to `/etc/ssh/ssh_config`:
```
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

### Install "Paq-nvim"
```
$ git clone https://github.com/savq/paq-nvim.git \
~/.local/share/nvim/site/pack/paqs/start/paq-nvim
```
