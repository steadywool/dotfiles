# Archlinux dotfiles 🐧

# NEW CONFIGURATION AT [HTTPS://GITHUB.COM/KANIVILLE/ANSIBLE-DOTFILES](https://github.com/kaniville/ansible-dotfiles) !

Configuration and tools that I use in my daily life.

![](./src/screenshot.png)

## Installation
See https://wiki.archlinux.org/title/Installation_guide.

### Partitions
| Partition               | Mount Options                             | Filesystem | Mount Point   |
|-------------------------|-------------------------------------------|------------|---------------|
| `/dev/sda1`             |`nodev,noexec,nosuid`                      | FAT-32     | `/boot`       |
| `/dev/sda2`             |                                           | Swap       | [SWAP]        |
| `/dev/sda3`             |                                           | Luks2      |               |
| `/dev/mapper/luks_root` |`noatime,compress=zstd,subvol=@`           | Btrfs      | `/`           |
| `/dev/mapper/luks_root` |`noatime,compress=zstd,subvol=@.snapshots` | Btrfs      | `/.snapshots` |
| `/dev/mapper/luks_root` |`noatime,compress=zstd,subvol=@var`        | Btrfs      | `/var`        |
| `/dev/mapper/luks_root` |`noatime,compress=zstd,subvol=@nix`        | Btrfs      | `/nix`        |
| `/dev/sda4`             |                                           | Ext4       | `/home`       |

### Packages
See [PACKAGES.md](./PACKAGES.md)

## Configuration
### Bootloader options
We can add them to our Bootloader.
```
lsm=landlock,lockdown,yama,apparmor,bpf
lockdown=confidentiality
cryptdevice=/dev/sda3:luks_root
```

### Kernel parameters
We need to create .conf files to `/etc/sysctl.d/`.
```
kernel.unprivileged_userns_clone=1
net.ipv4.ip_forward=1
```

### Systemd-homed user
Creating the user with systemd-homed:
```
homectl create username --storage=luks --shell=/usr/bin/zsh --member-of=users,wheel,video,audio,games,adbusers,nix-users,users,realtime
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

### Install "Yay", "Ranger devicons" and "Packer.nvim"
Install the zsh configuration and use this function.
```zsh
zinit
```
