set-location 'c:\users';
remove-item '.\*\appdata\local\temp\*' -recurse -force;
clear-recyclebin;
get-windowsupdate;
install-windowsupdate;
restart-computer -force;