# Description for some packages
## xorg display server installation 

```
sudo apt install xorg xbacklight xbindkeys xvkbd xinput
```
**xorg** - This metapackage provides the components for a standalone workstation running the X Window System. It provides the X libraries, an X server, a set of fonts, and a group of basic X clients and utilities.

**xbacklight** - xbacklight is a simple command-line utility to set the backlight level using the RandR 1.2 Backlight output property.

**xbindkeys** - xbindkeys is a program that allows you to launch shell commands with your keyboard or your mouse under the X Window System. It links commands to keys or mouse buttons, using a configuration file. It's independent of the window manager and can capture all keyboard keys (ex: Power, Wake...).

**xvkbd** - xvkbd is a virtual (graphical) keyboard program for X Window System which provides facility to enter characters onto other clients (software) by clicking on a keyboard displayed on the screen. 

**xinput** - Xinput is an utility for configuring and testing XInput devices (mouses, keyboards, and touchpads).
___
## PACKAGE INCLUDES build-essential.

```
sudo apt install build-essential
```
**build-essential** - This package contains an informational list of packages which are considered essential for building Debian packages. This package also depends on the packages on that list, to make it easy to have the build-essential packages installed.
___
## Microcode for Intel/AMD

```
# sudo apt install amd64-microcode
sudo apt install intel-microcode 
```
This package contains updated system processor microcode for Intel i686 and Intel X86-64 processors. Intel releases microcode updates to correct processor behavior as documented in the respective processor specification updates.

For AMD processors, please refer to the amd64-microcode package.
___
## Network File Tools/System Events

```
sudo apt install dialog mtools dosfstools avahi-daemon acpi acpid gvfs-backends xfce4-power-manager
```
**dialog** - This application provides a method of displaying several different types of dialog boxes from shell scripts. This allows a developer of a script to interact with the user in a much friendlier manner.

**mtools** - Mtools is a collection of utilities to access MS-DOS disks from Unix without mounting them. It supports Win'95 style long file names, OS/2 Xdf disks, ZIP/JAZ disks and 2m disks (store up to 1992kB on a high density 3 1/2 disk). Also included in this package are commands to eject and manipulate the write/password protection control of Zip disks.

**dosfstools** - The dosfstools package includes the mkfs.fat and fsck.fat utilities, which respectively make and check MS-DOS FAT filesystems.

**avahi-daemon** - Avahi is a fully LGPL framework for Multicast DNS Service Discovery. It allows programs to publish and discover services and hosts running on a local network with no specific configuration. For example you can plug into a network and instantly find printers to print to, files to look at and people to talk to.

**acpi** - Attempts to replicate the functionality of the 'old' apm command on ACPI systems, including battery and thermal information. Does not support ACPI suspending, only displays information about ACPI devices.

**acpid** - Modern computers support the Advanced Configuration and Power Interface (ACPI) to allow intelligent power management on your system and to query battery and configuration status.

ACPID is a completely flexible, totally extensible daemon for delivering ACPI events. It listens on netlink interface (or on the deprecated file /proc/acpi/event), and when an event occurs, executes programs to handle the event. The programs it executes are configured through a set of configuration files, which can be dropped into place by packages or by the admin.

**gvfs-backends** - gvfs is a userspace virtual filesystem where mounts run as separate processes which you talk to via D-Bus. It also contains a gio module that seamlessly adds gvfs support to all applications using the gio API. It also supports exposing the gvfs mounts to non-gio applications using fuse. This package contains the afc, afp, archive, cdda, dav, dnssd, ftp, gphoto2, http, mtp, network, sftp, smb and smb-browse backends.

**xfce4-power-manager** - This power manager for the Xfce desktop enables laptop users to set up a power profile for two different modes "on battery power" and "on ac power" while still allowing desktop users to at least change the DPMS settings and CPU frequency using the settings dialogue.
___
## Sound packages
```
sudo apt install pulseaudio alsa-utils pavucontrol volumeicon-alsa
```

**pulseaudio** - PulseAudio, previously known as Polypaudio, is a sound server for POSIX and WIN32 systems. It is a drop in replacement for the ESD sound server with much better latency, mixing/re-sampling quality and overall architecture.

**alsa-utils** - Utilities for configuring and using ALSA (Advanced Linux Sound Architecture)

**pavucontrol** - PulseAudio Volume Control (pavucontrol) is a simple GTK+ based volume control tool (mixer) for the PulseAudio sound server.

**volumeicon-alsa** - This is a lightweight volume control that sits in your systray. This version is compatible with ALSA.
___

## Network Manager
```
sudo apt install network-manager network-manager-gnome
```
**network-manager** - NetworkManager is a system network service that manages your network devices and connections, attempting to keep active network connectivity when available. It manages ethernet, Wi-Fi, mobile broadband (WWAN), and PPPoE devices, and provides VPN integration with a variety of different VPN services.

**network-manager-gnome** - (same as above) + This package contains a systray applet for GNOME's notification area but it also works for other desktop environments
___

## Printing and bluetooth (if needed)
```
sudo apt install cups system-config-printer simple-scan
sudo apt install bluez blueman
```

**cups** - The Common UNIX Printing System (or CUPS(tm)) is a printing system and general replacement for lpd and the like. It supports the Internet Printing Protocol (IPP), and has its own filtering driver model for handling various document types.

**system-config-printer** - System-config-printer is a GUI written in Python using GTK+ to configure a CUPS server. Its primary use is to configure the printing system on the local host, but can also be used to setup a remote printer.

**simple-scan** - Simple Scan is an easy-to-use application, designed to let users connect their scanner and quickly have the image/document in an appropriate format.

**bluez** - This package contains tools and system daemons for using Bluetooth devices. BlueZ is the official Linux Bluetooth protocol stack. It is an Open Source project distributed under GNU General Public License (GPL).

**blueman** - Blueman is a GTK+ bluetooth management utility for GNOME using bluez D-Bus backend.
___

## Packages needed for bspwm installation
```
sudo apt install bspwm dmenu sxhkd picom numlockx rofi dunst libnotify-bin unzip geany scrot
```

**bspwm** - Bspwm is a tiling window manager that represents windows as the leaves of a full binary tree.

**sxhkd** - sxhkd is a simple X hotkey daemon with a powerful and compact configuration syntax.

**picom** - picom is a compositor for X11, based on xcompmgr. In addition to shadows, fading and translucency, picom implements window frame opacity control, inactive window transparency, and shadows on argb windows.

**numlockx** - Utilities to enable the keyboard's Numeric Lock during X11 session initialization or using command line utility. The package automatically installs session script to enable numlock on session start.

**rofi** - rofi can act as an application launcher, window switcher, ssh launcher and dmenu replacement.

**dunst** - Dunst is a highly configurable and lightweight notification-daemon: The only thing it displays is a colored box with unformatted text. The whole notification specification (non-optional parts and the "body" capability) is supported as long as it fits into this look & feel.

**libnotify-bin** - A library that sends desktop notifications to a notification daemon, as defined in the Desktop Notifications spec. These notifications can be used to inform the user about an event or display some form of information without getting in the user's way.

**unzip** - InfoZIP's unzip program. With the exception of multi-volume archives (ie, .ZIP files that are split across several disks using PKZIP's /& option), this can handle any file produced either by PKZIP, or the corresponding InfoZIP zip program.

**geany** - Geany is a small and lightweight integrated development environment. It was developed to provide a small and fast IDE, which has only a few dependencies from other packages.

**scrot** - scrot (SCReen shOT) is a simple command line screen capture utility that uses imlib2 to grab and save images. Multiple image formats are supported through imlib2's dynamic saver modules.

**mousepad** - Mousepad is a graphical text editor for Xfce based on Leafpad.
___
