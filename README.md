<h3 align="center">🐧 My dotfiles</h3>

<p align="center">Configuration of tools that I use in my daily life.</p>

<p align="center">
  <img src="src/screenshot.png"/>
</p>

<p align="center">
	<a href="https://github.com/kaniville/dotfiles/stargazers">
		<img src="https://img.shields.io/github/stars/kaniville/dotfiles?color=pink&style=for-the-badge"/>
  </a>
	<a href="https://github.com/kaniville/dotfiles/commits/main">
		<img src="https://img.shields.io/github/commit-activity/m/kaniville/dotfiles?color=blue&style=for-the-badge"/>
  </a>
	<a href="https://github.com/kaniville/dotfiles/forks">
		<img src="https://img.shields.io/github/forks/kaniville/dotfiles?color=orange&style=for-the-badge"/>
  </a>
</p>

## 🌻 Details
Here are the tools that these dotfiles supply:

- `archlinux` as distribution
- `gnome` as desktop environment
- `alacritty` as terminal emulator
- `fish` as shell
- `neovim` as code editor
- `ranger` as file explorer

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

System snapshots are taken before each update with [Btrfs autosnap](https://github.com/kaniville/btrfs-autosnap).

## 🌄 Installation
To install these dotfiles, use https://github.com/kaniville/ansible-configuration.

You can also clone this repository with Git:
```
$ git clone https://github.com/kaniville/linux-dotfiles.git
```
