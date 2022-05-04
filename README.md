### CLI
zsh / neovim / ranger / htop / cronie / tmux / task

### Wayland
alacritty || kitty / sway{bg,idle,lock} / dunst / bemenu / j4-dmenu-desktop<sup>AUR</sup>

light / grim + slurp + jq / gammastep / wl-clipboard

### Appearance
ttf-jetbrains-mono / noto-fonts{-emoji} / arc-gtk-theme / breeze-icons

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
pipewire / pipewire-alsa / pipewire-jack / pipewire-pulse / wireplumber

gst-plugin-pipewire / gst-libav / gst-plugins-{base,good,bad,ugly}

### Security
apparmor / nftables / bubblewrap-suid / fail2ban / usbguard

---
### Tools
udisks2 / android-tools / bluez{-utils} / man-db / tlp / xdg-user-dirs

khunter / arch-audit / realtime-privileges / docker / flatpak

nmap / ripgrep / prettier / cpupower / gamemode

### Others
mupdf / imv / mpv / polkit-gnome / gnome-keyring / libappindicator-gtk3

---
### Enable AppArmor as default security model
Add this line to `/etc/default/grub`:
```
GRUB_CMDLINE_LINUX_DEFAULT="apparmor=1 security=apparmor"
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

### Generate usbguard rules
```
# usbguard generate-policy > /etc/usbguard/rules.conf
```

### Add password to Grub2
```
# grub-mkpasswd-pbkdf2
```
Then, add these lines to `/etc/grub.d/40_custom`:
```
set superusers="USER"
password_pbkdf2 USER PASSWORD_HASH
```
Don't forget to regenerate Grub's config.

### Use Nftables with Docker
Replace `iptables` package by `iptables-nft`

### Mount Options
root partition use `defaults`, `compress=zstd`, `noatime` & `subvol=SUBVOLUME`

/tmp & /boot use `nodev`, `nosuid` & `noexec`

/home encrypted partition use `nodev` & `nosuid`

### TLP and USB keys
Edit `/etc/tlp.conf` and replace `1` by `0`:
```
USB_AUTOSUSPEND=0
```

### Add languages to Flatpak
```
# flatpak config languages --set "en;fr"
```

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
