#!/usr/bin/osascript
delay 5
tell application "System Events" to ((accessibility description of process "Terminal") contains "enabled")
