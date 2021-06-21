@echo off
cls
mode con: lines=42 cols=119

:1
echo.
echo Welcome to BatchUnitedM 1.0 OS Recovery
echo Recovery United 1.0 (alpha)
echo.
echo Are  you ready to restore the system ?(Y/N)
set /p rus=Choice:
if %rus% == Y goto recovery
if %rus% == N exit

:recovery
echo Recovering system...
echo.
echo Recovering batbox.exe...
xcopy sysfail\recovery\batbox.exe /f
ping localhost -n 2,1 >nul
echo.
echo Recovering insertbmp.exe...
xcopy sysfail\recovery\insertbmp.exe /f
ping localhost -n 2,1 >nul
echo.
echo Recovering bg.exe...
xcopy sysfail\recovery\bg.exe /f
ping localhost -n 2,1 >nul
echo.
echo Recovering cmdmenusel.exe...
xcopy sysfail\recovery\cmdmenusel.exe /f
ping localhost -n 2,1 >nul
echo.
echo Recovering completed
ping localhost -n 2 >nul
call reboot.bat