# Dotfiles 🐧

Configuration of tools that I use in my daily life.

![](src/screenshot.png)

## Details 🌻
Here are the tools that these dotfiles supply:

- `archlinux` as distribution
- `sway` as window manager
- `swaylock` as screen locker
- `swayidle` as idle manager
- `waybar` as status bar
- `fuzzel` as application launcher
- `dunst` as notification daemon
- `kitty` as terminal
- `grim` and `slurp` as screenshot utility
- `fish` as shell
- `neovim` as editor
- `ranger` as file explorer
- `calcurse` as calendar

## How it work ? 🔬
By default, only the applications needed to run the system are installed.

To install additional graphic applications, [Flatpak](https://www.flatpak.org) is within the user's reach.

For applications in CLI, or not present in Flatpak, [Distrobox](https://github.com/89luca89/distrobox) and [Podman](https://podman.io) are installed.

System snapshots are taken before each update with [Btrfs autosnap](https://github.com/kaniville/btrfs-autosnap).

## Installation 🌄
To install these dotfiles, use https://github.com/kaniville/ansible-configuration.

You can also clone this repository with Git:
```
$ git clone https://github.com/kaniville/linux-dotfiles.git
```
