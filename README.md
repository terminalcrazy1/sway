# Sway
**Sway is a tiling window manager written using wlroots. It is extremely lightweight.**

These dotfiles contain my ricing for sway.
 - status.sh: status.sh contains the code that runs to print nerdfont icons and data to my taskbar.
 - config: config does everything else. It defines modes, keybinds, font, and my status_command
## Principle
My principle for the making of these dotfiles is that of a minimal sway config without loss of functionality. My taskbar configuration has very little moving parts in comparison to waybar configurations, but it exposes much of the same data. It uses less than 50MB of memory with a terminal open, and it hasn't been particularly optimized.
## Dependencies
This project requires a few things to be installed. Namely, the font: `Code New Roman by Nerdfonts`, and a few commands `top, grep, tail, awk, echo, bc, cat, free,` and `date`. Of course, you also need `sway`.
Using **Arch Linux**, these applications can be installed with the command:
```
pacman -Sy otf-codenewroman-nerd bc procps-ng grep gawk dateutils sway
```
I recommend Gnome Terminal, Firefox, and Nemo for `$term, $web,` and `$file`
