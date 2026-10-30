#!/usr/bin/env bash

startd=$(pgrep mangobar)

if [ -n "$startd" ]; then
	systemctl --user stop mangobar
else
	systemctl --user start mangobar
fi
