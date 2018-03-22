#!/bin/sh

sudo /usr/local/lib/heads/heads-welcome

nitrogen --restore
wicd-gtk -t &

exec awesome
