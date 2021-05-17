@echo off

set shell=HKCU\Software\Classes\Directory\Background\shell

reg delete "%shell%\x-console" /f
reg delete "%shell%\x-terminal" /f

set block=HKLM\Software\Microsoft\Windows\CurrentVersion\Shell Extensions\Blocked

reg delete "%block%" /v "{9F156763-7844-4DC4-B2B1-901F640F5155}" /f
