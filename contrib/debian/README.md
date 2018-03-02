
Debian
====================
This directory contains files used to package knotcoind/knotcoin-qt
for Debian-based Linux systems. If you compile knotcoind/knotcoin-qt yourself, there are some useful files here.

## knotcoin: URI support ##


knotcoin-qt.desktop  (Gnome / Open Desktop)
To install:

	sudo desktop-file-install knotcoin-qt.desktop
	sudo update-desktop-database

If you build yourself, you will either need to modify the paths in
the .desktop file or copy or symlink your knotcoin-qt binary to `/usr/bin`
and the `../../share/pixmaps/knotcoin128.png` to `/usr/share/pixmaps`

knotcoin-qt.protocol (KDE)

