#!/bin/sh

if [ "$DESKTOP_SESSION" = "lightdm-xsession" ]; then
   sleep 10s
   killall conky
   cd "$HOME/.conky/Simple"
   conky -c "$HOME/.conky/Simple/simple-cpu" &
   cd "$HOME/.conky/Simple"
   sleep 5 && conky -c "$HOME/.conky/Simple/simple-disk" &
   cd "$HOME/.conky/Simple"
   sleep 5 && conky -c "$HOME/.conky/Simple/simple-net" &
   exit 0
fi
