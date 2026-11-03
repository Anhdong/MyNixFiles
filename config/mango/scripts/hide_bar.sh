#!/usr/bin/env bash

startd=$(pgrep waybar)

if [ -n "$startd" ]; then
	systemctl --user stop waybar
else
	systemctl --user start waybar
fi
