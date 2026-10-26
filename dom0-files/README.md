# dom0 files

Theme, icons and fonts for the XFCE desktop in dom0.

| Archive | Installs to |
|---|---|
| `themes.tar.gz` | `/usr/share/themes/qubes-dom0-darker` |
| `icons.tar.gz` | `/usr/share/icons/{Fluent,Fluent-dark,Nordic,Nordic-Darker}` |
| `fonts.tar.gz` | `/usr/share/fonts/{JetBrains,Roboto}` |

## Installation

dom0 has no network access, so copy the archives in from a qube that has a
clone of this repository (here called `work`; adjust the path to where the repo
is):

```bash
qvm-run --pass-io work 'cat ~/qubes-os-dark-theme/dom0-files/themes.tar.gz' > themes.tar.gz
qvm-run --pass-io work 'cat ~/qubes-os-dark-theme/dom0-files/icons.tar.gz' > icons.tar.gz
qvm-run --pass-io work 'cat ~/qubes-os-dark-theme/dom0-files/fonts.tar.gz' > fonts.tar.gz
```

Unpack them into `/usr/share` and refresh the font cache:

```bash
sudo tar xzf themes.tar.gz -C /usr/share
sudo tar xzf icons.tar.gz -C /usr/share
sudo tar xzf fonts.tar.gz -C /usr/share
sudo fc-cache -f
```

Copying files into dom0 is a security-sensitive operation – only do it from a
qube you trust.

## Activating the theme

In the XFCE settings, select **qubes-dom0-darker** in both:

- **Appearance → Style**
- **Window Manager → Style**

The icon theme (**Appearance → Icons**) and fonts (**Appearance → Fonts**) can
be set to Fluent-dark, Roboto and JetBrains Mono to match the appvms.
