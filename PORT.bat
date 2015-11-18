@echo off
color 0b
title Rom Porter by KINGbabasula
mkdir Base-Rom
mkdir Port-Rom
cls
echo.
echo   ****************************************************************************
echo   *                                                                          *
echo   *                             Rom Porter                                   *
echo   *                           by KINGbabasula                                *
echo   *                                                                          *
echo   ****************************************************************************
echo.
pause
goto start

:start
cls
echo.
echo  =============================================================================
echo                      Welcome to KINGbabasula Rom Porter
echo.
echo    You'll need 2 zip files: 
echo    1. A clean Cyanogenmod or AOSP ROM that is running on your device [Base-Rom]
echo    2. The ROM you want to port [Port-Rom]
echo.
pause
cls
echo.
echo    What ROM are you porting?
echo    1. Stock or Cyanogenmod based
echo    2. MIUI
echo    3. Paranoid Android
echo    4. PAC MAN
echo    5. Manufacturer rom (Touchwiz, Sense)
echo    6. Lewa OS
echo    7. Run fix tool
echo    8. Sign zip file
echo    9. Exit
echo  =============================================================================
set /p sdffs=Enter your decision:
if %sdffs%==1 (start sto.bat)
if %sdffs%==2 (start miui.bat)
if %sdffs%==3 (start pa.bat)
if %sdffs%==4 (start pac.bat)
if %sdffs%==5 (start man.bat)
if %sdffs%==6 (start lewa.bat)
if %sdffs%==7 (start fix.bat)
if %sdffs%==8 (start sign.bat)
if %sdffs%==9 (exit)
