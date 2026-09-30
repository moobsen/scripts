# sticky-note

A minimal sticky note for sway: a tray icon that toggles a floating,
light-yellow note window. Closing the window with X only hides it.
The text is autosaved to `~/.sticky-note.txt`.

## Dependencies

Only packages from the official Ubuntu repos:

```sh
sudo apt install python3-pyqt6 qt6-wayland
```

## Install

```sh
cp sticky-note ~/.local/bin/
chmod +x ~/.local/bin/sticky-note
```

## Sway config

Add to `~/.config/sway/config`:

```
exec ~/.local/bin/sticky-note
for_window [app_id="sticky-note"] floating enable, sticky enable
```

- `exec` starts the script at login.
- `floating enable` keeps the note from being tiled.
- `sticky enable` shows the note on every workspace.

Reload sway with `$mod+Shift+c` or run `swaymsg reload`. Note that
`exec` lines only run at login, so start the script manually the
first time.

## Usage

- Left-click the tray icon to show or hide the note.
- Close the note with X to hide it. The text is kept.

## Troubleshooting

**No tray icon at login, but it works when started manually:** the script
started before swaybar's tray was ready. Delay it:

```
exec sh -c 'sleep 2; exec ~/.local/bin/sticky-note'
```
