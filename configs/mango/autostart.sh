#!/usr/bin/env bash
set +e

# ensure xdg-desktop-portal running without last dirty state
systemctl --user restart xdg-desktop-portal &

# some env can't auto run the portal, so need this
/usr/lib/xdg-desktop-portal-wlr  >/dev/null 2>&1 &

# notify
mako >/dev/null 2>&1 &

# night light
wlsunset -S 05:00 -s 20:00 >/dev/null 2>&1 &

# wallpaper
swaybg -i ~/.config/background >/dev/null 2>&1 &

# top bar
mangobar >/dev/null 2>&1 &


# xwayland dpi scale
# echo "Xft.dpi: 140" | xrdb -merge #dpi缩放
# xrdb merge ~/.Xresources >/dev/null 2>&1

# ime input
fcitx5 --replace -d >/dev/null 2>&1 &

# keep clipboard content
# wl-clip-persist --clipboard regular --reconnect-tries 0 >/dev/null 2>&1 &

# clipboard content manager
# wl-paste --type text --watch cliphist store >/dev/null 2>&1 &

# bluetooth 
# blueman-applet >/dev/null 2>&1 &

# network
# nm-applet >/dev/null 2>&1 &

# Permission authentication
# /usr/lib/xfce-polkit/xfce-polkit >/dev/null 2>&1 &

# inhibit by audio
sway-audio-idle-inhibit >/dev/null 2>&1 &
