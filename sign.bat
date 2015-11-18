@echo off
color 0b
title Sign Zip Files

:sign
echo  Put Your Unsigned Zip File in this Folder and rename it to rom_unsigned.zip
echo.
pause
echo.
cls
cd "%~dp0"
echo.
echo   Signing Rom...
java -Xmx2048m -jar "%~dp0tools\signapk.jar" -w "%~dp0tools\testkey.x509.pem" "%~dp0tools\testkey.pk8" "%~dp0\rom_unsigned.zip" "%~dp0\rom_signed.zip"
echo.
if errorlevel 1 (
echo An error occured
PAUSE
goto fail
)
echo   Rom signed!
echo.
pause
goto success

:success
cls
echo.
echo   ===========================================================================
echo                                 Signing Zip Files Complete!                         
echo   ===========================================================================
echo.
pause
exit

:fail
cls
echo.
echo  ====================================================================
echo                            Signing Zip Files failed!
echo  ====================================================================
echo.
pause
exit
