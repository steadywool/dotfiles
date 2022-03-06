### CLI
zsh / neovim / ranger / htop / cronie / tmux / ripgrep

### Wayland
alacritty / sway{bg,idle,lock} / dunst / bemenu / j4-dmenu-desktop<sup>AUR</sup>

light / grim + slurp + jq / wl-clipboard / gammastep

### Theme
arc-gtk-theme / breeze-icons / xcursor-breeze<sup>AUR</sup> / ttf-hack / ttf-roboto / kvantum

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
apparmor / nftables / firewalld / bubblewrap-suid / fail2jan / flatpak

---
### Other
udisks2 / xdg-user-dirs / tlp / polkit-gnome / libappindicator-gtk3
/ gnome-keyring / android-tools / bluez{-utils} / imagemagick / man-db
/ docker / mupdf / imv / mpv / arch-audit / bmon

---
### Enable AppArmor as default security model
Add these line to `/etc/default/grub`:
```
GRUB_CMDLINE_LINUX_DEFAULT="apparmor=1 security=apparmor"
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
