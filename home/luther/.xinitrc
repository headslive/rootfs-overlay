#!/bin/sh

lxpanel &
heads-welcome &
pcmanfm --desktop &

exec openbox-session
