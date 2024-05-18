APPVM files

themes, icon, and fonts should be installed in /usr/share in the template.

The whonix icons would be copied to /usr/share/sdwdata-gui/icons the whonix gateway template.

The setup-desktop.sh should be copied to /opt/user-scripts, ~/.config/gtk-4.0/gtk.css also needs to be copied to /opt/user-scripts.

It's important to copy the original gtk.css file to /opt/user-scripts, it contains patches needed by qubes os, without it parts of the gnome might glitch.

/opt/user-scripts/setup-desktop.sh can be used to change the color of the appvm, e.g. ./setup-desktop.sh red will change the color to red.
