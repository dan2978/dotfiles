#!/bin/bash

xrandr --output HDMI-0 --primary --mode 1920x1080 --rate 75
xrandr --output DP-0 --right-of HDMI-0 --mode 1280x1024 --rate 75
