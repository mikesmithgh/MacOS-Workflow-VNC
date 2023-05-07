do shell script "open -b com.apple.systempreferences " & ¬
    "/System/Library/PreferencePanes/Security.prefPane"

tell application "System Events"
    tell its application process "System Settings"

        # open Accessibility
        repeat until UI element 15 of group 1 of scroll area 1 of group 1 of ¬
            group 2 of splitter group 1 of group 1 of window "Privacy & Security" exists
            delay 0.2
        end repeat
        click UI element 15 of group 1 of scroll area 1 of group 1 of group 2 ¬
            of splitter group 1 of group 1 of window "Privacy & Security"
        delay 0.2

         # click + add button
         click button 1 of group 1 of scroll area 1 of group 1 of group 2 ¬
             of splitter group 1 of group 1 of window "Accessibility"
         delay 1

         keystroke tab using {shift down}
         delay 1
	       keystroke "VNC User"
         delay 1
	       keystroke tab
         delay 1
	       keystroke "vncpass"
         delay 1
         keystroke return
         delay 1


         -- Wait for the "Open" dialog to appear
         repeat until exists window "Open"
             delay 0.2
         end repeat

         -- Focus the text field in the dialog
         set frontmost to true
         keystroke "g" using {command down, shift down}
         delay 0.2
         keystroke "/Applications/iTerm.app"
         keystroke return
         delay 0.2
         click button "Open" of window 1

  end tell
end tell


