@echo off

set shell=HKCU\Software\Classes\Directory\Background\shell

set consoletxt=Open with Console
set consoleico=%~dp0icons\console.ico
set consolecmd=\"%LocalAppData%\Microsoft\WindowsApps\wt.exe\" -p Console -d .

reg add "%shell%\x-console" /ve /d "%consoletxt%" /f
reg add "%shell%\x-console" /v Icon /d "%consoleico%" /f
reg add "%shell%\x-console\command" /ve /d "%consolecmd%" /f

set terminaltxt=Open with Terminal
set terminalico=%~dp0icons\terminal.ico
set terminalcmd=\"%LocalAppData%\Microsoft\WindowsApps\wt.exe\" -p Terminal -d .

reg add "%shell%\x-terminal" /ve /d "%terminaltxt%" /f
reg add "%shell%\x-terminal" /v Icon /d "%terminalico%" /f
reg add "%shell%\x-terminal\command" /ve /d "%terminalcmd%" /f
