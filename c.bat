@echo off
for /f "usebackq" %%x in (`powershell c.ps1 %1`) do set dir=%%x
IF /I %dir% NEQ 1 CD /D %dir%