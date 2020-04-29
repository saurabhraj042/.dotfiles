#!/bin/sh
xrandr --output eDP1 --auto --output DP1 --auto --right-of eDP1
xrandr --newmode 1368x768-ok   85.25  1368 1440 1576 1784  768 771 781 798 -hsync +vsync
xrandr --addmode DP1 1368x768-ok
xrandr --output DP1 --mode 1368x768-ok
