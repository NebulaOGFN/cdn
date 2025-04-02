@echo off
setlocal enabledelayedexpansion

for %%F in (*.pak *.sig) do (
    echo Erstelle Hash f�r: %%F
    powershell -Command "Get-FileHash '%%F' -Algorithm SHA256 | Out-File -Encoding ascii '%%F.hash'"
)

echo Fertig!
pause
