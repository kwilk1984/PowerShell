# At start up this script:
## Force stops email and chat client
## Soft close browsers and IDEs
## Force shuts down computer

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

# Force stop email client
Stop-Process -Name thunderbird -Force -ErrorAction SilentlyContinue

# Shutdown computer
Stop-Computer -Force