#!/bin/sh

autorandr -c
#/usr/bin/lxqt-policykit-agent &
/usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1 &
picom -b
nitrogen --restore & 
deadd-notification-center &
nm-applet &
flameshot &
blueman-applet &
#kdeconnect-indicator &
copyq &
#system-config-printer-applet &
udiskie --tray &
#rclone-browser &
numlockx on
#solaar --window hide &
#aw-qt &    <--ActivityWatch
#vivaldi &
slack &
qutebrowser &
# wal -i ~/git-repos/dotfiles/wallpapers/legion
# wal -R &
