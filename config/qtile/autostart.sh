#!/bin/sh

autorandr -c
/usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1 &
picom -b
nitrogen --restore & 
deadd-notification-center &
nm-applet &
lxqt-powermanagement &
flameshot &
blueman-applet &
#kdeconnect-indicator &
copyq &
#system-config-printer-applet &
udiskie --tray &
#rclone-browser &
numlockx on
#aw-qt &    <--ActivityWatch
slack &
qutebrowser &
syncthing &
syncthingtray &
solaar --window hide &
# wal -i ~/git-repos/dotfiles/wallpapers/legion
# wal -R &
