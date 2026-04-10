@echo OFF
DEL /F "C:\Users\Public\Desktop\Epic Games Launcher.lnk"
DEL /F "C:\Users\Public\Desktop\Unity Hub.lnk"
NET USER runneradmin TheDisa1a
NET CONFIG server /srvcomment:"Windows Server By Disala"
REG ADD "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer" /V EnableAutoTray /T REG_DWORD /D 0 /F
NET USER TheDisala TheDisa1a /ADD >NUL 
NET LOCALGROUP administrators TheDisala /ADD >NUL 
NET USER installer /DELETE 
ICACLS C:\Windows\Temp /GRANT TheDisala:F >NUL 
ICACLS C:\Windows\installer /GRANT TheDisala:F >NUL 
diskperf -Y >NUL 
sc config Audiosrv start= auto >NUL
sc start audiosrv >NUL
python -c "import pyautogui as pag; pag.click(876, 21, duration=2)"
python -c "import pyautogui as pag; pag.click(906, 73, duration=2)"
echo ..................................................
echo ..#####...######...####....####...##.......####...
echo ..##..##....##....##......##..##..##......##..##..
echo ..##..##....##.....####...######..##......######..
echo ..##..##....##........##..##..##..##......##..##..
echo ..#####...######...####...##..##..######..##..##..
echo ..................................................
echo IP:
tasklist | find /I "ngrok.exe" >NUL && curl -s localhost:4040/api/tunnels | jq -r .tunnels[0].public_url || echo "Failed to retreive NGROK authtoken - check again your authtoken"
echo Username: TheDisala / runneradmin
echo Password: TheDisa1a
echo You can login now!

