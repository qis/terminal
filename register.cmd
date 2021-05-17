@echo off

set shell=HKCU\Software\Classes\Directory\Background\shell

set consoletxt=Open in Console
set consoleico=%~dp0icons\console.ico
set consolecmd=\"%LocalAppData%\Microsoft\WindowsApps\wt.exe\" -p Console -d .

reg add "%shell%\x-console" /ve /d "%consoletxt%" /f
reg add "%shell%\x-console" /v Icon /d "%consoleico%" /f
reg add "%shell%\x-console\command" /ve /d "%consolecmd%" /f

set terminaltxt=Open in Terminal
set terminalico=%~dp0icons\terminal.ico
set terminalcmd=\"%LocalAppData%\Microsoft\WindowsApps\wt.exe\" -p Terminal -d .

reg add "%shell%\x-terminal" /ve /d "%terminaltxt%" /f
reg add "%shell%\x-terminal" /v Icon /d "%terminalico%" /f
reg add "%shell%\x-terminal\command" /ve /d "%terminalcmd%" /f

set block=HKLM\Software\Microsoft\Windows\CurrentVersion\Shell Extensions\Blocked

reg add "%block%" /v "{9F156763-7844-4DC4-B2B1-901F640F5155}" /d "WindowsTerminal" /f
