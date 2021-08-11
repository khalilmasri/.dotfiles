#!/bin/bash

function run {
  if ! pgrep $1 ;
  then
    $@&
  fi
}


#Find out your monitor name with xrandr or arandr (save and you get this line)
xrandr --output DVI-D-1 --primary --mode 1920x1080 --rotate normal --output HDMI-1 --off --output DP-1 --mode 1920x1080 --rotate normal --left-of DVI-D-1
~/vimscript.sh

#cursor active at boot
xsetroot -cursor_name left_ptr &



