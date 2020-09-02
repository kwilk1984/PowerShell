#This is a simple startup script that will do the following:
## Get and stop YourPhone, Skype, and Cortana processes
## Start email client
## Go to home directory

# Stop unwanted processes
Get-Process YourPhone | Stop-Process -Force -ErrorAction SilentlyContinue
Get-Process Skype | Stop-Process -Force -ErrorAction SilentlyContinue
Get-Process Cortana | Stop-Process -Force -ErrorAction SilentlyContinue

# Start email client
Start-Process thunderbird -WindowStyle Minimized

# Go to home directory
cd $home