# At start up this script:
## Stops unwanted programs
## Pull repository updates
## Starts desired programs
## Sets terminal to home directory

# Set ErrorAction preference
$ErrorActionPreference = 'SilentlyContinue'

# Stop unwanted processes
Write-Host "Stopping unwanted processes . . ."
Stop-Process -Name Cortana -Force -ErrorAction SilentlyContinue
Stop-Process -Name Skype -Force -ErrorAction SilentlyContinue
Stop-Process -Name YourPhone -Force -ErrorAction SilentlyContinue

# Set terminal to home directory
Set-Location $HOME

#Pull repository updates
Set-Location 'C:\users\kwilk\Documents\Repositories\PowerShell'
Write-Host "Pulling repository updates for PowerShell . . ." -ForegroundColor Cyan
git pull
Set-Location 'C:\users\kwilk\Documents\Repositories\CPP'
Write-Host "Pulling repository updates for CPP . . ." -ForegroundColor Cyan
git pull
Set-Location 'C:\users\kwilk\Documents\Repositories\MyWebsite'
Write-Host "Pulling repository updates for MyWebsite . . ." -ForegroundColor Cyan
git pull
Set-Location 'C:\users\kwilk\Documents\Repositories\DiscordBots'
Write-Host "Pulling repository updates for DiscordBots . . ." -ForegroundColor Cyan
git pull

Set-Location $HOME #Return to home directory

# Start wanted processes
Write-Host "Starting Mozilla Thunderbird . . ." -ForegroundColor Green
Start-Process thunderbird -WindowStyle Minimized
Write-Host "Starting Chrome  . . ." -ForegroundColor Green
Start-Process chrome -WindowStyle Minimized
