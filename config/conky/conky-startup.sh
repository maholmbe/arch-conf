#!/bin/sh

killall conky
sleep 5s && conky -c "$HOME/.config/conky/mats.conkyrc" &
