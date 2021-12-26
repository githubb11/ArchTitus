# arch installer Installer Script
# this is not ment for use by the public no pull requests will be accepted 
# if you need help [put your issue here](https://github.com/ChrisTitusTech/ArchTitus/issues)
<img src="https://i.imgur.com/YiNMnan.png" />

This README contains the steps I do to install and configure a fully-functional Arch Linux installation containing a desktop environment, all the support packages (network, bluetooth, audio, printers, etc.), along with all my preferred applications and utilities. The shell scripts in this repo allow the entire process to be automated.)

---
## Create Arch ISO or Use Image

Download ArchISO from <https://archlinux.org/download/> and put on a USB drive with [Etcher](https://www.balena.io/etcher/), [Ventoy](https://www.ventoy.net/en/index.html), or [Rufus](https://rufus.ie/en/)

## Boot Arch ISO

From initial Prompt type the following commands:

```
pacman -Sy git
git clone https://github.com/
cd ArchTitus
./archtitus.sh
```

### System Description
This is completely automated arch install of the awesome wm on arch using all the packages I use on a daily basis. 

## programs
- gimp
- vscode
- vim
- nano
- qemu kvm
- grub-customizer
- awesome

## Troubleshooting

__[Arch Linux Installation Guide](https://github.com/rickellis/Arch-Linux-Install-Guide)__

### No Wifi

#1: Run `iwctl`

#2: Run `device list`, and find your device name.

#3: Run `station [device name] scan`

#4: Run `station [device name] get-networks`

#5: Find your network, and run `station [device name] connect [network name]`, enter your password and run `exit`. You can test if you have internet connection by running `ping google.com`. 

## Credits 

- Original packages script was a post install cleanup script called Archtitus located here: https://github.com/ChrisTitusTech/ArchTitus