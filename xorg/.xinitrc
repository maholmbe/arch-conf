#!/bin/sh

userresources=$HOME/.Xresources
usermodmap=$HOME/.Xmodmap
sysresources=/etc/X11/xinit/.Xresources
sysmodmap=/etc/X11/xinit/.Xmodmap

# merge in defaults and keymaps

if [ -f $sysresources ]; then


    xrdb -merge $sysresources

fi

if [ -f $sysmodmap ]; then
    xmodmap $sysmodmap
fi

if [ -f "$userresources" ]; then


    xrdb -merge "$userresources"

fi

if [ -f "$usermodmap" ]; then
    xmodmap "$usermodmap"
fi

# start some nice programs

if [ -d /etc/X11/xinit/xinitrc.d ] ; then
 for f in /etc/X11/xinit/xinitrc.d/?*.sh ; do
  [ -x "$f" ] && . "$f"
 done
 unset f
fi

[ -f /etc/xprofile ] && . /etc/xprofile
[ -f ~/.xprofile ] && . ~/.xprofile

xset r rate 500 50 #key repeat (xset r rate delay Hz)
numlockx on
autorandr -c
/usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1 &
picom -b
nitrogen --restore & 
#deadd-notification-center &
dunst &
nm-applet &
flameshot &
#blueman-applet &
udiskie --tray &
slack &
qutebrowser &
syncthing &
syncthingtray --wait &
solaar --window hide &
#wal -R
/home/mats/.config/conky/conky-startup.sh &
(sleep 5; copyq) &

exec qtile start
#exec dwm
