@echo OFF
reg ADD "HKLM\System\CurrentControlSet\Control\Terminal Server" /v fDenyTSConnections /t REG_DWORD /d 0 /f
netsh advfirewall firewall set rule group="Remote Desktop" new enable=yes
reg ADD "HKLM\System\CurrentControlSet\Control\Terminal Server\WinStations\RDP-Tcp" /v UserAuthentication /t REG_DWORD /d 1 /f
start powershell.exe -NoExit -Command "ngrok tcp 3389 --region in"
echo "Successfully Enabled RDP Access..."

wall.bat
