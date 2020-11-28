@echo off

set shell=HKCU\Software\Classes\Directory\Background\shell

reg delete "%shell%\x-console" /f
reg delete "%shell%\x-terminal" /f
