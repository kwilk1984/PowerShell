# At start up this script:
## Force stops email and chat client
## Soft close browsers and IDEs
## Force shuts down computer

# Set ErrorAction preference
$ErrorActionPreference = 'SilentlyContinue'

# Soft close 
Get-Process chrome | ForEach-Object {
    $_.CloseMainWindow() | Out-Null
    }
Get-Process powershell_ise | ForEach-Object {
    $_.CloseMainWindow() | Out-Null
    }    

# Stop email and chat client
Stop-Process -Name Discord -Force -ErrorAction SilentlyContinue
Stop-Process -Name thunderbird -Force -ErrorAction SilentlyContinue

# Shutdown computer
Stop-Computer -Force