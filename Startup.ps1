# At start up this script:
## Stops unwanted programs
## Starts desired programs 
## Sets terminal to home directory

# Set ErrorAction preference
$ErrorActionPreference = 'SilentlyContinue'

# Stop unwanted processes
Write-Host "Stopping unwanted processes . . ."
Stop-Process -Name Cortana -Force -ErrorAction SilentlyContinue
Stop-Process -Name Skype -Force -ErrorAction SilentlyContinue
Stop-Process -Name YourPhone -Force -ErrorAction SilentlyContinue

# Start wanted processes
Write-Host "Starting Mozilla Thunderbird . . ." -ForegroundColor Green
Start-Process thunderbird -WindowStyle Minimized
Write-Host "Starting Discord  . . ." -ForegroundColor Green
Start-Process Discord -WindowStyle Minimized
Write-Host "Starting Chrome  . . ." -ForegroundColor Green
Start-Process chrome -WindowStyle Minimized

# Set terminal to home directory
Set-Location $HOME