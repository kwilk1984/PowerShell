# This script will perform seven (7) tasks:
## Close some processes to prepare for rebooting
## Clear cache from temporary files
## Remove files in Downloads directory
## Defrag the HDD
## Empty the Recycle bin
## Get and install Windows updates
## Restart the computer to apply updates

# Set ErrorAction preference
$ErrorActionPreference = 'SilentlyContinue'

# Soft close programs
Get-Process chrome | ForEach-Object {
    $_.CloseMainWindow() | Out-Null
    }
Get-Process powershell_ise | ForEach-Object {
    $_.CloseMainWindow() | Out-Null
    }
Get-Process Discord | ForEach-Object {
    $_.CloseMainWindow() | Out-Null
    }
Get-Process notepad++ | ForEach-Object {
    $_.CloseMainWindow() | Out-Null
    }

# Clear cache and temporary files
Write-Host "Removing Cache and Temporary Files . . ." -ForegroundColor Red
Set-Location 'c:\users'
Remove-Item '.\*\appdata\local\temp\*' -Recurse -Force -ErrorAction SilentlyContinue
Set-Location $HOME

# Remove files in Downloads directory
Write-Host "Removing files in Downloads folder . . ." -ForegroundColor Red
Set-Location 'C:\users\kwilk\Downloads'
Remove-Item * -Recurse -Force -ErrorAction SilentlyContinue
Set-Location $HOME #Return to home directory

# Empty the Recycle Bin
Write-Host "Emptying the Recycle Bin . . ." -ForegroundColor Red
Clear-RecycleBin -Force

# Defrag HDD
Write-Host "Defragging hard disk . . ." -ForegroundColor Red
defrag /c /h /o /u

# Get and install windows updates
Write-Host "Updating Windows . . ." -ForegroundColor Red
Get-WindowsUpdate -ForceDownload
Write-Host "Installing Windows updates . . ." -ForegroundColor Red
Install-WindowsUpdate -ForceInstall -AcceptAll -IgnoreReboot

# Restart computer
Write-Host "Restarting computer . . ." -ForegroundColor Yellow -BackgroundColor DarkMagenta
Restart-Computer -Force