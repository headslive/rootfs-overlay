#!/bin/sh

sudo /usr/local/lib/heads/heads-welcome

lxpanel &
pcmanfm --desktop &

exec openbox-session
