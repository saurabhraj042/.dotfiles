#!/bin/sh
#
# ~/.xinitrc
#
# Executed by startx (run your window manager from here)

if [ -d /etc/X11/xinit/xinitrc.d ]; then
  for f in /etc/X11/xinit/xinitrc.d/*; do
    [ -x "$f" ] && . "$f"
  done
  unset f
fi

export EDITOR=nvim
export MOZ_ENABLE_WAYLAND=0
export MOZ_WEBRENDER=1
export PATH=$HOME/.bin:/usr/local/bin:$PATH

~/usr/lib/xfce-polkit/xfce-polkit &
xrdb ~/.Xresources &
urxvtd -q -o -f &
picom -b &
nitrogen --restore &
dunst &
sxhkd &
greenclip daemon &
xsetroot -cursor_name left_ptr &
~/.dotfiles/a.sh

exec bspwm
