#!/bin/sh
lxpanel &
#nitrogen --restore &
heads-welcome &
#wicd-gtk -t &

exec openbox-session
