# Neofetch install

# This script will install neofetch to a Windows 10 computer using
# the script from Scoop

# The user will need to make sure they have the correct
# Execution-Policy configured in Powershell in order to execute the
# script.

iex (new-object net.webclient).downloadstring('https://get.scoop.sh')
scoop install git
scoop install neofetch
