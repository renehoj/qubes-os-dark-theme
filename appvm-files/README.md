# appvm files

Themes, icons, fonts and a setup script for GNOME appvms.

| File | Installs to (in the template) |
|---|---|
| `themes.tar.gz` | `/usr/share/themes/Qubes-{red,orange,yellow,green,blue,purple}` |
| `icons.tar.gz` | `/usr/share/icons/{Fluent,Fluent-dark,Nordic,Nordic-Darker}` |
| `fonts.tar.gz` | `/usr/share/fonts/{JetBrains,Roboto}` |
| `setup-desktop.sh` | `/opt/user-scripts/setup-desktop.sh` |
| `whonix-icons/` | `/usr/share/sdwdate-gui/icons/` (Whonix Gateway template only) |

## Installation in the template

Run the following in the template (e.g. `fedora-xx` or `debian-xx`):

```bash
sudo tar xzf themes.tar.gz -C /usr/share
sudo tar xzf icons.tar.gz -C /usr/share
sudo tar xzf fonts.tar.gz -C /usr/share
sudo fc-cache -f
```

Install the setup script, and save a copy of the template's original
`~/.config/gtk-4.0/gtk.css` as `/opt/user-scripts/qubes-gtk.css`:

```bash
sudo mkdir -p /opt/user-scripts
sudo install -m 755 setup-desktop.sh /opt/user-scripts/setup-desktop.sh
sudo cp ~/.config/gtk-4.0/gtk.css /opt/user-scripts/qubes-gtk.css
```

The original `gtk.css` contains patches needed by Qubes OS. Without it, parts of
GNOME may glitch. `setup-desktop.sh` appends it to the theme's own `gtk.css`.

### Whonix Gateway

In the Whonix Gateway template, copy the icons from `whonix-icons/` over the
originals:

```bash
sudo cp whonix-icons/*.png /usr/share/sdwdate-gui/icons/
```

Shut down the template afterwards so the appvms pick up the changes.

## Setting the colour in an appvm

Run the script in each appvm with the colour that matches the qube's label:

```bash
/opt/user-scripts/setup-desktop.sh red
```

Valid colours: `red`, `orange`, `yellow`, `green`, `blue`, `purple`.

The script:

- sets the GTK and window manager theme to `Qubes-<colour>`
- sets the icon theme to `Fluent-dark`
- sets the fonts to Roboto 10 and JetBrains Mono 10 (monospace)
- copies the theme's GTK 4 stylesheet to `~/.config/gtk-4.0/gtk.css` and appends
  `/opt/user-scripts/qubes-gtk.css` to it

The settings are stored in the appvm's home directory, so they persist across
restarts and only need to be set once per appvm. Restart running applications
to see the change.
