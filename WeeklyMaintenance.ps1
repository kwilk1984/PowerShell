#This script will do four things:
## Clear cache from temporary files
## Empty the Recycle bin
## Get and install Windows updates
## Restart the computer to apply updates

#Clear cache and temporary files
echo "Clearing Cache and Temporary Files . . ."
Set-Location 'c:\users'
Remove-Item '.\*\appdata\local\temp\*' -Recurse -Force -ErrorAction SilentlyContinue

#Empty the Recycle Bin
echo "Emptying the Recycle Bin . . ."
Clear-RecycleBin -Force

#Get and install windows updates
echo "Updating Windows . . ."
Get-WindowsUpdate -ForceDownload
echo "Installing Windows updates . . ."
Install-WindowsUpdate -ForceInstall

#Restart computer
echo "Restarting computer . . ."
Restart-Computer -force