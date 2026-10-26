> **Qubes-green** (internally named Nordic-green) is [Nordic](https://github.com/EliverLara/Nordic) with its accent
> changed to `#a3be8c` (`$nord14`), another colour from the
> [Nord](https://github.com/arcticicestudio/nord) palette.  Everything else --
> backgrounds, text, borders, the warning/error/success colours -- is untouched.

#### Installation

Copy this folder to `~/.themes/` (create it if necessary) or `/usr/share/themes/`.

To set the theme on Gnome, run the following commands in Terminal:

```
gsettings set org.gnome.desktop.interface gtk-theme "Qubes-green"
gsettings set org.gnome.desktop.wm.preferences theme "Qubes-green"
```
or change it via your distribution's tweak tool.

#### Rebuilding from source

The SCSS sources carry the accent too, so `gulp styles` reproduces the shipped
CSS.  The accent is picked in `gtk-3.0/gtk.scss`, `gtk-3.0/gtk-dark.scss`,
`gtk-4.0/gtk.scss`, `gtk-4.0/gtk-dark.scss` and the two `cinnamon/*.scss` entry
points:

```scss
$accent: 'green';   // default | blue | red | orange | yellow | green | purple
```

and resolved against `$accent_colors` in `gtk-3.0/_colors.scss`.

#### Accents in this set

| accent | Nord | hex |
|---|---|---|
| red | `$nord11` | `#bf616a` |
| orange | `$nord12` | `#d08770` |
| yellow | `$nord13` | `#ebcb8b` |
| green | `$nord14` | `#a3be8c` |
| blue | `$nord9` | `#81a1c1` |
| purple | `$nord15` | `#b48ead` |
