#!/usr/bin/osascript
do shell script "open -b com.apple.systempreferences " & ¬
    "/System/Library/PreferencePanes/Security.prefPane"

tell application "System Events"
    tell its application process "System Settings"

        # open Accessibility
        repeat until UI element 15 of group 1 of scroll area 1 of group 1 of ¬
            group 2 of splitter group 1 of group 1 of window "Privacy & Security" exists
            delay 5
        end repeat
        click UI element 15 of group 1 of scroll area 1 of group 1 of group 2 ¬
            of splitter group 1 of group 1 of window "Privacy & Security"
        delay 5

         # click + add button
         click button 1 of group 1 of scroll area 1 of group 1 of group 2 ¬
             of splitter group 1 of group 1 of window "Accessibility"
         delay 5

         keystroke tab using {shift down}
         delay 5
	       keystroke "VNC User"
         delay 5
	       keystroke tab
         delay 5
	       keystroke "vncpass"
         delay 5
         keystroke return
         delay 5


         -- Wait for the "Open" dialog to appear
         repeat until exists window "Open"
             delay 0.2
         end repeat

         -- Focus the text field in the dialog
         set frontmost to true
         keystroke "g" using {command down, shift down}
         delay 5
         keystroke "/Applications/iTerm.app"
         keystroke return
         delay 5
         click button "Open" of window 1

  end tell
end tell


tell application "System Settings" to quit

delay 5
do shell script "open -a iTerm /Users/runner/work/MacOS-Workflow-VNC/MacOS-Workflow-VNC/test-system-event-access.scpt"
delay 5
tell application "System Events"
    tell process "iTerm2"
        click button "OK" of window 1
    end tell
end tell
delay 20
# this right, but didn't work I had to do it manually like 5 times
tell application "System Events"
    tell process "UserNotificationCenter"
        click button "OK" of window 1
    end tell
end tell
delay 5

# delay 5
# do shell script "open -b com.apple.systempreferences " & ¬
#     "/System/Library/PreferencePanes/Security.prefPane"

# tell application "System Events"
#     tell its application process "System Settings"
#
#         # open Accessibility
#         repeat until UI element 19 of group 1 of scroll area 1 of group 1 of ¬
#             group 2 of splitter group 1 of group 1 of window "Privacy & Security" exists
#             delay 5
#         end
#         click UI element 19 of group 1 of scroll area 1 of group 1 of group 2 ¬
#             of splitter group 1 of group 1 of window "Privacy & Security"
#         delay 5
#
# 		    click UI element 2 of UI element 1 of row 2 of outline 1 of scroll area 1 of group 1 of scroll area 1 of group 1 of group 2 of splitter group 1 of group 1 of window "Automation" of application process "System Settings" of application "System Events"
#         delay 5
#     		click checkbox "System Events" of UI element 1 of row 3 of outline 1 of scroll area 1 of group 1 of scroll area 1 of group 1 of group 2 of splitter group 1 of group 1 of window "Automation" of application process "System Settings" of application "System Events"
#
#         delay 5
#         keystroke tab using {shift down}
#         delay 5
# 	      keystroke "VNC User"
#         delay 5
# 	      keystroke tab
#         delay 5
# 	      keystroke "vncpass"
#         delay 5
#         keystroke return
#         delay 5
#
#
#   end tell
# end tell


# tell application "System Settings" to quit
delay 5

do shell script "open -b com.apple.systempreferences " & ¬
    "/System/Library/PreferencePanes/Security.prefPane"

tell application "System Events"
    tell its application process "System Settings"

        # open Accessibility
        repeat until UI element 17 of group 1 of scroll area 1 of group 1 of ¬
            group 2 of splitter group 1 of group 1 of window "Privacy & Security" exists
            delay 5
        end repeat
        click UI element 17 of group 1 of scroll area 1 of group 1 of group 2 ¬
            of splitter group 1 of group 1 of window "Privacy & Security"
        delay 5

        # click + add button
        click button 1 of group 1 of scroll area 1 of group 1 of group 2 ¬
            of splitter group 1 of group 1 of window "Screen Recording"
        delay 5

        keystroke tab using {shift down}
        delay 5
	      keystroke "VNC User"
        delay 5
	      keystroke tab
        delay 5
	      keystroke "vncpass"
        delay 5
        keystroke return
        delay 5


        -- Wait for the "Open" dialog to appear
        repeat until exists window "Open"
            delay 5
        end repeat

        -- Focus the text field in the dialog
        set frontmost to true
        keystroke "g" using {command down, shift down}
        delay 5
        keystroke "/Applications/iTerm.app"
        keystroke return
        delay 5
        click button "Open" of window 1

  end tell
end tell

delay 5
tell application "System Settings" to quit

# delay 5
# do shell script "pkill -9 -x iTerm"
# delay 5
# do shell script "pkill -9 -x Terminal"
