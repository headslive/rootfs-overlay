#!/usr/bin/env python2
#
# parazyd - (c) wtfpl
# random xkcd comic

import urllib, json, random
latest = 1710
num = str(random.randint(1,latest))
info = json.load(urllib.urlopen("http://www.xkcd.com/" + num + "/info.0.json"))
print (info['img'])
