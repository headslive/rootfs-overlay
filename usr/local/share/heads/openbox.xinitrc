#!/bin/sh

nitrogen --restore

# Workaround/Fix for the cursor not showing in X/GTK without a window manager.
xsetroot -cursor_name left_ptr

sudo /usr/local/lib/heads/heads-welcome

pulseaudio -D
lxpanel &
dunst &
udiskie &
pcmanfm --desktop &

exec openbox-session
