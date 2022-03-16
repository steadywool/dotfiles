### CLI
zsh / neovim / ranger / htop / cronie / tmux / ripgrep

### Wayland
alacritty / sway{bg,idle,lock} / dunst / bemenu / j4-dmenu-desktop<sup>AUR</sup>

light / grim + slurp + jq / wl-clipboard / gammastep

### Theme
arc-gtk-theme / breeze-icons / xcursor-breeze<sup>AUR</sup> / ttf-hack / ttf-roboto

---
### Base
base / base-devel / linux-firmware / linux-hardened / intel-ucode

### Disks
ntfs-3g / exfat-utils / dosfstools / mtools / btrfs-progs

### Archiving
zip / unzip / unrar / p7zip

### Boot loader
efibootmgr (uefi) / grub / grub-btrfs

### Security
apparmor / nftables / bubblewrap-suid / fail2ban / usbguard / rkhunter / arch-audit

---
### Other
udisks2 / xdg-user-dirs / tlp / android-tools / bluez{-utils}

mupdf / imv / mpv / gnome-keyring / polkit-gnome / gnome-keyring / libappindicator-gtk3

tcpdump / gnu-netcat / strace / man-db

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

### Mount Options
root partition use `defaults`, `compress=zstd`, `noatime` & `subvol=SUBVOLUME`

/tmp & /boot use `nodev`, `nosuid` & `noexec`

/home encrypted partition use `nodev` & `nosuid`

### Install Packer.nvim
```
$ mkdir ~/.local/share/nvim/site/pack/packer/start && \
git clone --depth 1 https://github.com/wbthomason/packer.nvim \
~/.local/share/nvim/site/pack/packer/start/packer.nvim
```
