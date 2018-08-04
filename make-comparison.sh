#!/bin/bash

wget -O - 'https://raw.githubusercontent.com/leftaroundabout/beamonad/master/demo/Main.hs' \
   | sed 's/&/\&amp\;/g;s/</\&lt\;/g;s/>/\&gt\;/g' \
   > yeamer-demo-components/source.html

cat yeamer-demo-components/{head,source,tail}.html > yeamer-demo.html
