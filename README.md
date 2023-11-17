### ⛔ This repository has been archived and is no longer actively maintained. 
### Please visit this repository for the latest updates: [ansible-dotfiles](https://github.com/steadywool/ansible-dotfiles).

#### You can browse through existing branches to view dotfiles at specific points in time:
- Latest i3 WM commit (2020/07/27) : https://github.com/steadywool/dotfiles/tree/i3
- Latest BSPWM commit (2021/07/01) : https://github.com/steadywool/dotfiles/tree/bspwm
- Latest Sway WM commit (2023/05/31) : https://github.com/steadywool/dotfiles/tree/sway

---

# 🐧 My dotfiles

Configuration of tools that I use in my daily life.

![](src/screenshot.png)

## 🌻 Details

Here is the partitioning I use:

| Partition                 | Mount Options                                     | Filesystem | Mount Point   |
|---------------------------|---------------------------------------------------|------------|---------------|
| `/dev/sda1`               | `nodev,noexec,nosuid`                             | vfat       | `/boot`       |
| `/dev/sda2`               |                                                   | swap       | none          |
| `/dev/sda3`               |                                                   | luks2      |               |
| `/dev/mapper/luks_root`   | `noatime,compress=zstd,subvol=@`                  | btrfs      | `/`           |
| `/dev/mapper/luks_root`   | `noatime,compress=zstd,subvol=@.snapshots`        | btrfs      | `/.snapshots` |
| `/dev/mapper/luks_root`   | `noatime,compress=zstd,subvol=@var_log`           | btrfs      | `/var/log`    |
| `/dev/mapper/luks_root`   | `nodev,nosuid,noatime,compress=zstd,subvol=@home` | btrfs      | `/home`       |

*You can also encrypt your swap memory by following [these instructions](https://wiki.archlinux.org/title/Dm-crypt/Swap_encryption).*

## 🔬 How it work ?
By default, only the applications needed to run the system are installed.

To install additional graphical applications, [Flatpak](https://www.flatpak.org) is within the user's reach.

For applications in CLI, or not present in Flatpak, [Distrobox](https://github.com/89luca89/distrobox) and [Podman](https://podman.io) are installed.

System snapshots are taken before each update with [Btrfs autosnap](https://github.com/steadywool/btrfs-autosnap).

## 🚀 Installation
To install these dotfiles, use https://github.com/kaniville/ansible-configuration.

You can also clone this repository with Git:
```
$ git clone https://github.com/kaniville/linux-dotfiles.git
```
