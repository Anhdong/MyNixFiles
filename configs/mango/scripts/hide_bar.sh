#!/usr/bin/env bash

startd=$(pgrep mangobar)

if [ -n "$startd" ]; then
	pkill mangobar
else
	mangobar >/dev/null 2>&1 &
fi
