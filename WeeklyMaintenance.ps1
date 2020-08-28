#This script will do 

#Clear all cache and temporary files
echo "Clearing Cache and Temporary Files . . ."
set-location 'c:\users'
remove-item '.\*\appdata\local\temp\*' -recurse -force -ErrorAction SilentlyContinue

#Empty the Recycle Bin
echo "Emptying the Recycle Bin . . ."
clear-recyclebin -force

#Get and install windows updates
echo "Updating Windows . . ."
get-windowsupdate -force
echo "Installing Windows updates . . ."
install-windowsupdate -force

#Restart computer to apply updates
echo "Restarting computer . . ."
restart-computer -force