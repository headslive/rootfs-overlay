#!/bin/sh

nitrogen --restore

sudo /usr/local/lib/heads/heads-welcome

wicd-gtk -t &

exec awesome
