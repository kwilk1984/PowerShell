set-location 'c:\users'
remove-item '.\*\appdata\local\temp\*' -recurse -force -ErrorAction SilentlyContinue
clear-recyclebin -force
get-windowsupdate -force
install-windowsupdate -force
restart-computer -force