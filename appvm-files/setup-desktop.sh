#!/bin/bash

gsettings set org.gnome.desktop.interface gtk-theme "Qubes-$1"
gsettings set org.gnome.desktop.wm.preferences theme "Qubes-$1"
gsettings set org.gnome.desktop.interface icon-theme "Fluent-dark"

gsettings set org.gnome.desktop.interface document-font-name "Roboto 10"
gsettings set org.gnome.desktop.interface font-name "Roboto 10"
gsettings set org.gnome.desktop.interface monospace-font-name "JetBrains Mono 10"

cp /usr/share/themes/Qubes-$1/gtk-4.0/gtk.css /home/user/.config/gtk-4.0
cat /opt/user-scripts/qubes-gtk.css >> /home/user/.config/gtk-4.0/gtk.css

