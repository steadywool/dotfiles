### CLI
zsh / neovim / ranger / ufw / htop

### Wayland
kitty / sway{bg,idle,lock} / dunst / bemenu

light / grim + slurp + jq / wl-clipboard

### Other
imv / man-db / udisks2 / xdg-user-dirs / tlp / atool / polkit-gnome / libappindicator-gtk3 / gnome-keyring / android-tools / bluez + bluez-utils

---
### Base
base / base-devel / linux-firmware / linux{-lts} / intel-ucode

### Disks
ntfs-3g / exfat-utils / dosfstools / mtools / btrfs-progs

### Archiving
zip / unzip / unrar / p7zip

### Boot loader
os-prober / efibootmgr (uefi) / grub / grub-btrfs

---
### Setup firewall default
Enter these default rules for a personal computer with UFW:
```
# ufw default deny incoming
# ufw default allow outgoing
```

### Install Packer.nvim
```
git clone --depth 1 https://github.com/wbthomason/packer.nvim\
~/.local/share/nvim/site/pack/packer/start/packer.nvim
```
