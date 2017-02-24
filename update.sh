#!/bin/sh
#
# this script will update the rootfs when executed,
# overwriting any existing changes

[ $UID = 0 ] || exit 1

git fetch --all && git reset --hard origin/master

[ -f /tmp/update-hooks/new ] && . /tmp/update-hooks/new
