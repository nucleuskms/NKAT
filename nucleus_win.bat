@echo off
chcp 65001 >nul
title Nucleus KMS Activation Tool
color 0a

:: Clear the screen and display the ASCII art
cls
echo ██████   █████                     ████
echo ░░██████ ░░███                     ░░███
echo  ░███░███ ░███  █████ ████  ██████  ░███   ██████  █████ ████  █████
echo  ░███░░███░███ ░░███ ░███  ███░░███ ░███  ███░░███░░███ ░███  ███░░
echo  ░███ ░░██████  ░███ ░███ ░███ ░░░  ░███ ░███████  ░███ ░███ ░░█████
echo  ░███  ░░█████  ░███ ░███ ░███  ███ ░███ ░███░░░   ░███ ░███  ░░░░███
echo █████  ░░█████ ░░████████░░██████  █████░░██████  ░░████████ ██████
echo ░░░░░    ░░░░░   ░░░░░░░░  ░░░░░░  ░░░░░  ░░░░░░    ░░░░░░░░ ░░░░░░


echo ----------------------------------
echo ► Official Website:
echo ► nucleuskms.github.io
echo ----------------------------------
echo © 2025 Nucleus Software Solutions. All Rights Reserved.               
ping localhost -n 6 >nul
cls


:admin_check
cls
echo ================================
echo   Nucleus KMS Activation Tool
echo ================================
echo Please make sure this program is running as Administrator!
echo.
echo [1] Continue
echo [2] Exit
echo ================================
set /p choice="Your choice: "

if "%choice%"=="2" (
    echo Exiting the program. Goodbye!
    timeout /t 3 >nul 2>&1
    exit
)

if not "%choice%"=="1" (
    echo Invalid input. Please choose 1 or 2.
    timeout /t 2 >nul 2>&1
    cls
    goto admin_check
)

:choose_os
cls
echo ================================
echo          Choose Your OS
echo ================================
echo [1] Windows 11
echo [2] Windows 10
echo [3] Windows 8.1
echo [4] Windows 8
echo [5] Windows 7
echo [6] Windows Vista
echo [0] Exit
echo ================================
set /p os="Enter your choice: "

if "%os%"=="0" (
    echo Exiting the program. Goodbye!
    timeout /t 3 >nul 2>&1
    exit
)

set os_name=
if "%os%"=="1" set os_name=Windows 11
if "%os%"=="2" set os_name=Windows 10
if "%os%"=="3" set os_name=Windows 8.1
if "%os%"=="4" set os_name=Windows 8
if "%os%"=="5" set os_name=Windows 7
if "%os%"=="6" set os_name=Windows Vista

if not defined os_name (
    echo Invalid input. Please choose a valid option.
    timeout /t 2 >nul 2>&1
    goto choose_os
)

:choose_edition
cls
echo ================================
echo         %os_name% Editions
echo ================================

if "%os_name%"=="Windows 11" (
    echo [1] Pro
    echo [2] Pro N
    echo [3] Enterprise
    echo [4] Enterprise N
    echo [5] LTSC
    echo [6] Education
)

if "%os_name%"=="Windows 10" (
    echo [1] Pro
    echo [2] Pro N
    echo [3] Enterprise
    echo [4] Enterprise N
    echo [5] LTSC
    echo [6] Education
)

if "%os_name%"=="Windows 8.1" (
    echo [1] Pro
    echo [2] Pro N
    echo [3] Enterprise
    echo [4] Enterprise N
    echo [5] Core
)

if "%os_name%"=="Windows 8" (
    echo [1] Pro
    echo [2] Pro N
    echo [3] Enterprise
    echo [4] Enterprise N
    echo [5] Core
)

if "%os_name%"=="Windows 7" (
    echo [1] Professional
    echo [2] Professional N
    echo [3] Enterprise
    echo [4] Enterprise N
    echo [5] Ultimate
)

if "%os_name%"=="Windows Vista" (
    echo [1] Business
    echo [2] Business N
    echo [3] Enterprise
    echo [4] Enterprise N
    echo [5] Ultimate
)

echo [0] Go Back
echo ================================
set /p edition="Enter your choice: "

if "%edition%"=="0" goto choose_os

set edition_name=
if "%edition%"=="1" set edition_name=Pro
if "%edition%"=="2" set edition_name=Pro N
if "%edition%"=="3" set edition_name=Enterprise
if "%edition%"=="4" set edition_name=Enterprise N
if "%edition%"=="5" set edition_name=LTSC
if "%edition%"=="6" set edition_name=Education
if "%edition%"=="7" set edition_name=Professional
if "%edition%"=="8" set edition_name=Business
if "%edition%"=="9" set edition_name=Ultimate

if not defined edition_name (
    echo Invalid input. Please choose a valid option.
    timeout /t 2 >nul 2>&1
    goto choose_edition
)

:confirmation
cls
echo ================================
echo      Confirm Your Selection
echo ================================
echo Operating System: %os_name%
echo Edition: %edition_name%
echo ================================
echo [1] Confirm
echo [2] Go Back
set /p confirm="Your choice: "

if "%confirm%"=="2" goto choose_edition

if not "%confirm%"=="1" (
    echo Invalid input. Please choose 1 or 2.
    timeout /t 2 >nul 2>&1
    goto confirmation
)

:activation
cls
echo Activating %os_name% %edition_name%...
timeout /t 3 >nul 2>&1
REM 
if "%os_name%"=="Windows Vista" (
    if "%edition_name%"=="Business" set key=YFKBB-PQJJV-G996G-VWGXY-2V3X8
    if "%edition_name%"=="Business N" set key=HMBQG-8H2RH-C77VX-27R82-VMQBT
    if "%edition_name%"=="Enterprise" set key=VKK3X-68KWM-X2YGT-QR4M6-4BWMV
    if "%edition_name%"=="Enterprise N" set key=VTC42-BM838-43QHV-84HX6-XJXKV
)

if "%os_name%"=="Windows 7" (
    if "%edition_name%"=="Professional" set key=FJ82H-XT6CR-J8D7P-XQJJ2-GPDD4
    if "%edition_name%"=="Professional N" set key=MRPKT-YTG23-K7D7T-X2JMM-QY7MG
    if "%edition_name%"=="Enterprise" set key=33PXH-7Y6KF-2VJC9-XBBR8-HVTHH
    if "%edition_name%"=="Enterprise N" set key=YDRBP-3D83W-TY26F-D46B2-XCKRJ
)

if "%os_name%"=="Windows 8" (
    if "%edition_name%"=="Pro" set key=NG4HW-VH26C-733KW-K6F98-J8CK4
    if "%edition_name%"=="Enterprise" set key=32JNW-9KQ84-P47T8-D8GGY-CWCK7
)

if "%os_name%"=="Windows 8.1" (
    if "%edition_name%"=="Pro" set key=GCRJD-8NW9H-F2CDX-CCM8D-9D6T9
    if "%edition_name%"=="Enterprise" set key=MHF9N-XY6XB-WVXMC-BTDCT-MKKG7
)

if "%os_name%"=="Windows 10" (
    if "%edition_name%"=="Pro" set key=W269N-WFGWX-YVC9B-4J6C9-T83GX
    if "%edition_name%"=="Enterprise" set key=NPPR9-FWDCX-D2C8J-H872K-2YT43
)

if "%os_name%"=="Windows 11" (
    if "%edition_name%"=="Pro" set key=W269N-WFGWX-YVC9B-4J6C9-T83GX
    if "%edition_name%"=="Enterprise" set key=NPPR9-FWDCX-D2C8J-H872K-2YT43
)

slmgr /ipk %key%
slmgr /skms kms.digiboy.ir
slmgr /ato

cls
echo ================================
echo Activation completed successfully!
echo ================================
timeout /t 5 >nul 2>&1
cls

echo ███████╗██╗   ██╗██████╗ ██████╗  ██████╗ ██████╗ ████████╗    ██╗   ██╗███████╗██╗
echo ██╔════╝██║   ██║██╔══██╗██╔══██╗██╔═══██╗██╔══██╗╚══██╔══╝    ██║   ██║██╔════╝██║
echo ███████╗██║   ██║██████╔╝██████╔╝██║   ██║██████╔╝   ██║       ██║   ██║███████╗██║
echo ╚════██║██║   ██║██╔═══╝ ██╔═══╝ ██║   ██║██╔══██╗   ██║       ██║   ██║╚════██║╚═╝
echo ███████║╚██████╔╝██║     ██║     ╚██████╔╝██║  ██║   ██║       ╚██████╔╝███████║██╗
echo ╚══════╝ ╚═════╝ ╚═╝     ╚═╝      ╚═════╝ ╚═╝  ╚═╝   ╚═╝        ╚═════╝ ╚══════╝╚═╝
                                                                                   

echo Please support us if you can!
echo [1] Yea, Sure! Why not?
echo [2] Later
set /p choice="Choose an option: "

if "%choice%"=="1" (
    cls

    echo ██╗  ██╗██╗   ██╗ ██████╗ ███████╗    ████████╗██╗  ██╗ █████╗ ███╗   ██╗██╗  ██╗███████╗██╗
    echo ██║  ██║██║   ██║██╔════╝ ██╔════╝    ╚══██╔══╝██║  ██║██╔══██╗████╗  ██║██║ ██╔╝██╔════╝██║
    echo ███████║██║   ██║██║  ███╗█████╗         ██║   ███████║███████║██╔██╗ ██║█████╔╝ ███████╗██║
    echo ██╔══██║██║   ██║██║   ██║██╔══╝         ██║   ██╔══██║██╔══██║██║╚██╗██║██╔═██╗ ╚════██║╚═╝
    echo ██║  ██║╚██████╔╝╚██████╔╝███████╗       ██║   ██║  ██║██║  ██║██║ ╚████║██║  ██╗███████║██╗
    echo ╚═╝  ╚═╝ ╚═════╝  ╚═════╝ ╚══════╝       ╚═╝   ╚═╝  ╚═╝╚═╝  ╚═╝╚═╝  ╚═══╝╚═╝  ╚═╝╚══════╝╚═╝
                                                                                            


    start https://nucleuskms.github.io/support.html
    echo Thank you very much for your cooperation and using the program!
    timeout /t 6 >nul
    exit
)

if "%choice%"=="2" (
    cls
    echo Thank you very much for your cooperation and using the program!
    timeout /t 3 >nul
    exit
)

echo Invalid choice. Please restart the program.
pause

:: By freshadwiano
:: 03.01.2025