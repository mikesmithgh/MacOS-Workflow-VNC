#!/usr/bin/osascript
tell application "System Events" to ((accessibility description of process "Terminal") contains "enabled")
