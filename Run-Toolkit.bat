@echo off
:: Check for Administrative privileges
net session >nul 2>&1
if %errorLevel% == 0 (
    goto :menu
) else (
    echo =====================================================
    echo   ERROR: Please right-click and Run as Administrator!
    echo =====================================================
    pause
    exit
)

:menu
cls
color 0A
echo ============================================================
echo               PC-Testing-Toolkit Automation Menu            
echo ============================================================
echo  [1] Launch CPU-Z             [6] Run Windows RAM Test
echo  [2] Launch GPU-Z             [7] Open WirelessNetView
echo  [3] Launch CrystalDiskInfo   [8] Open Battery HTML Report
echo  [4] Launch CrystalDiskMark   [9] Open Peripherals Web Tester
echo  [5] Launch HWMonitor         [10] Exit Toolkit
echo ============================================================
set /p choice="Enter your choice (1-10): "

if "%choice%"=="1" goto :cpuz
if "%choice%"=="2" goto :gpuz
if "%choice%"=="3" goto :cdi
if "%choice%"=="4" goto :cdm
if "%choice%"=="5" goto :hwm
if "%choice%"=="6" goto :ram
if "%choice%"=="7" goto :wifi
if "%choice%"=="8" goto :batrep
if "%choice%"=="9" goto :periph
if "%choice%"=="10" exit
goto :menu

:cpuz
cls
echo Launching CPU-Z...
start "" "%~dp0CPU & GPU\cpu-z\cpuz.exe"
goto :menu

:gpuz
cls
echo Launching GPU-Z...
start "" "%~dp0CPU & GPU\gpu-z\gpuz.exe"
goto :menu

:cdi
cls
echo Launching CrystalDiskInfo...
start "" "%~dp0Storage & RAM\CrystalDiskInfo\DiskInfo64.exe"
goto :menu

:cdm
cls
echo Launching CrystalDiskMark...
start "" "%~dp0Storage & RAM\CrystalDiskMark\DiskMark64.exe"
goto :menu

:hwm
cls
echo Launching HWMonitor...
start "" "%~dp0Battery & Power\hwmonitor\HWMonitor_x64.exe"
goto :menu

:ram
cls
echo Launching Windows Memory Diagnostic...
mdsched.exe
goto :menu

:wifi
cls
echo Launching WirelessNetView...
:: Since it is in a subdirectory under its name
start "" "%~dp0Network & Wi-Fi Diagnostics\WirelessNetView\WirelessNetView.exe"
goto :menu

:batrep
cls
echo Generating and Opening Battery Report...
powercfg /batteryreport /output "%~dp0battery_report.html"
start "" "%~dp0battery_report.html"
goto :menu

:periph
cls
echo Opening All-in-One Peripherals Web Tester...
start https://vercel.app
goto :menu
