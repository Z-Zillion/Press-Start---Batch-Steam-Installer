@echo off
chcp 65001 >nul
color 4
title PressStart - By Zillion
goto banner
pause

:banner 
echo.
echo.
echo               ██▓███   ██▀███  ▓█████   ██████   ██████      ██████ ▄▄▄█████▓ ▄▄▄       ██▀███  ▄▄▄█████▓
echo               ▓██░  ██▒▓██ ▒ ██▒▓█   ▀ ▒██    ▒ ▒██    ▒    ▒██    ▒ ▓  ██▒ ▓▒▒████▄    ▓██ ▒ ██▒▓  ██▒ ▓▒
echo               ▓██░ ██▓▒▓██ ░▄█ ▒▒███   ░ ▓██▄   ░ ▓██▄      ░ ▓██▄   ▒ ▓██░ ▒░▒██  ▀█▄  ▓██ ░▄█ ▒▒ ▓██░ ▒░
echo               ▒██▄█▓▒ ▒▒██▀▀█▄  ▒▓█  ▄   ▒   ██▒  ▒   ██▒     ▒   ██▒░ ▓██▓ ░ ░██▄▄▄▄██ ▒██▀▀█▄  ░ ▓██▓ ░ 
echo               ▒██▒ ░  ░░██▓ ▒██▒░▒████▒▒██████▒▒▒██████▒▒   ▒██████▒▒  ▒██▒ ░  ▓█   ▓██▒░██▓ ▒██▒  ▒██▒ ░ 
echo               ▒▓▒░ ░  ░░ ▒▓ ░▒▓░░░ ▒░ ░▒ ▒▓▒ ▒ ░▒ ▒▓▒ ▒ ░   ▒ ▒▓▒ ▒ ░  ▒ ░░    ▒▒   ▓▒█░░ ▒▓ ░▒▓░  ▒ ░░   
echo               ░▒ ░       ░▒ ░ ▒░ ░ ░  ░░ ░▒  ░ ░░ ░▒  ░ ░   ░ ░▒  ░ ░    ░      ▒   ▒▒ ░  ░▒ ░ ▒░    ░    
echo               ░░         ░░   ░    ░   ░  ░  ░  ░  ░  ░     ░  ░  ░    ░        ░   ▒     ░░   ░   ░      
echo                           ░        ░  ░      ░        ░           ░                 ░  ░   ░              
echo Step 1: Enter req
echo Step 2: Follow tool steps
echo Step 3: Click through download gui
echo Step 4: Click Ignore - Cancel in steam gui
echo.
echo.
set /p input= Enter req:
if %input% == Steam goto security_check
cls
if not %input% == Steam goto leave 
pause

:security_check
setlocal EnableDelayedExpansion
set /p keywordInput= Enter access keyword: 
if not !keywordInput! == cobra (
    echo Access denied.
    goto leave
)
set /a code=%random% %% 90000 + 10000
echo Security code: !code!
set /p securityInput= Enter security code to execute:
if !securityInput! == !code! (
    cmd.exe /c "set __COMPAT_LAYER=RunAsInvoker && suse.exe"
) else (
    echo Invalid security code. Access denied.
    goto leave
)
endlocal
cls
pause

:leave
echo.
echo.
echo ██▓    ▓█████ ▄▄▄    ██▒   █▓▓█████  ▐██▌ 
echo ▓██▒    ▓█   ▀▒████▄ ▓██░   █▒▓█   ▀  ▐██▌ 
echo ▒██░    ▒███  ▒██  ▀█▄▓██  █▒░▒███    ▐██▌ 
echo ▒██░    ▒▓█  ▄░██▄▄▄▄██▒██ █░░▒▓█  ▄  ▓██▒ 
echo ░██████▒░▒████▒▓█   ▓██▒▒▀█░  ░▒████▒ ▒▄▄  
echo ░ ▒░▓  ░░░ ▒░ ░▒▒   ▓▒█░░ ▐░  ░░ ▒░ ░ ░▀▀▒ 
echo ░ ░ ▒  ░ ░ ░  ░ ▒   ▒▒ ░░ ░░   ░ ░  ░ ░  ░ 
echo   ░ ░      ░    ░   ▒     ░░     ░       ░ 
echo     ░  ░   ░  ░     ░  ░   ░     ░  ░ ░    
echo                          ░                
echo.
echo.
pause

pause
cmd /k