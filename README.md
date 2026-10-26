# qubes-os-dark-theme

A dark [Nord](https://github.com/arcticicestudio/nord)-based theme for Qubes OS,
built on [Nordic](https://github.com/EliverLara/Nordic).

The dom0 theme and the appvm themes match each other, so the whole desktop
looks like one uniform theme:

- **dom0** (XFCE) uses `qubes-dom0-darker`, which draws a thin coloured window
  border in the qube's trust-domain colour.
- **appvms** (GNOME) use one of the `Qubes-<colour>` themes, whose accent colour
  matches the qube's trust-domain colour. The colour is chosen per qube with
  `setup-desktop.sh`.
- The **Fluent-dark** icon theme has been modified to remove the white
  background, but only for the most commonly used icons.
- Fonts are **Roboto** (UI) and **JetBrains Mono** (monospace).

Only tested with an XFCE dom0 and GNOME appvms.

<img width="2549" height="1440" alt="dark-theme" src="https://github.com/user-attachments/assets/dc33d62c-45f8-47ff-88a2-4d4175f31ada" />

## Repository layout

| Path | Contents |
|---|---|
| [`dom0-files/`](dom0-files/README.md) | dom0 theme (`qubes-dom0-darker`), icons and fonts |
| [`appvm-files/`](appvm-files/README.md) | appvm themes (`Qubes-red`, `-orange`, `-yellow`, `-green`, `-blue`, `-purple`), icons, fonts, Whonix icons and `setup-desktop.sh` |

Each folder contains the files both unpacked and as `themes.tar.gz`,
`icons.tar.gz` and `fonts.tar.gz`, which unpack to `themes/`, `icons/` and
`fonts/` and are the easiest way to move the files into dom0 or a template.

## Installation

1. Install the dom0 files – see [dom0-files/README.md](dom0-files/README.md).
2. Install the appvm files in your template(s) and set the colour in each
   appvm – see [appvm-files/README.md](appvm-files/README.md).

## Credits and licences

- Themes are based on [Nordic](https://github.com/EliverLara/Nordic) by
  EliverLara (GPL-3.0, see the `LICENSE` file in each theme folder).
- Icons are based on [Fluent icon theme](https://github.com/vinceliuice/Fluent-icon-theme)
  by vinceliuice (GPL-3.0).
- [Roboto](https://fonts.google.com/specimen/Roboto) – Apache License 2.0.
- [JetBrains Mono](https://www.jetbrains.com/lp/mono/) – SIL Open Font License 1.1.
