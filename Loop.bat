@echo OFF
setlocal EnableDelayedExpansion

SET counter=0
SET delayMinutes=5

:loop
REM Calculate the delay in seconds
SET /A delaySeconds=delayMinutes*60

REM The following line executes the PowerShell command to sleep for the calculated delay in seconds.
powershell -Command "Start-Sleep -Seconds !delaySeconds!"

SET /A counter+=delayMinutes
<NUL SET /P=!counter! minutes have passed.

goto loop
