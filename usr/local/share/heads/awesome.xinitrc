#!/bin/sh

nitrogen --restore
wicd-gtk -t &
heads-welcome &

exec awesome
