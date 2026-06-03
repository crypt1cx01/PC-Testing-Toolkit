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
echo  1] Launch CPU-Z             7] Run Windows RAM Test
echo  2] Launch GPU-Z             8] Create Bootable MemTest86 USB
echo  3] Launch AIDA64 Extreme    9] Open WirelessNetView
echo  4] Launch Cinebench         10] Open Battery HTML Report
echo  5] Launch FurMark (32/64)   11] Open Peripherals Web Tester
echo  6] Launch CrystalDiskInfo   12] Exit Toolkit
echo                             13] Launch CrystalDiskMark
echo                             14] Launch Hard Disk Sentinel
echo ============================================================
set /p choice="Enter your choice (1-14): "

if "%choice%"=="1" goto :cpuz
if "%choice%"=="2" goto :gpuz
if "%choice%"=="3" goto :aida
if "%choice%"=="4" goto :cine
if "%choice%"=="5" goto :fur
if "%choice%"=="6" goto :cdi
if "%choice%"=="7" goto :ram
if "%choice%"=="8" goto :memtest
if "%choice%"=="9" goto :wifi
if "%choice%"=="10" goto :batrep
if "%choice%"=="11" goto :periph
if "%choice%"=="12" exit
if "%choice%"=="13" goto :cdm
if "%choice%"=="14" goto :hds
goto :menu

:cpuz
cls
echo Extracting and Launching CPU-Z...
cd /d "%~dp0CPU & GPU\cpu-z"
if exist "cpu-z_2.20.1-en.zip" (
    if not exist "Extracted_CPUZ" mkdir "Extracted_CPUZ"
    powershell -Command "Expand-Archive -Path 'cpu-z_2.20.1-en.zip' -DestinationPath 'Extracted_CPUZ' -Force"
    
    :: Smart architecture detection for CPU-Z (64-bit vs 32-bit)
    if "%PROCESSOR_ARCHITECTURE%"=="AMD64" (
        if exist "Extracted_CPUZ\cpuz_x64.exe" ( start "" "Extracted_CPUZ\cpuz_x64.exe" & goto :menu )
    )
    if exist "Extracted_CPUZ\cpuz_x32.exe" ( start "" "Extracted_CPUZ\cpuz_x32.exe" & goto :menu )
    if exist "Extracted_CPUZ\cpuz.exe" ( start "" "Extracted_CPUZ\cpuz.exe" & goto :menu )
    
    echo Error: CPU-Z executable could not be targeted inside the ZIP!
    pause
) else (
    echo Error: cpu-z_2.20.1-en.zip not found!
    pause
)
goto :menu

:gpuz
cls
echo Launching GPU-Z...
cd /d "%~dp0CPU & GPU\gpu-z"
if exist "GPU-Z.2.69.0.exe" ( 
    start "" "GPU-Z.2.69.0.exe" 
) else ( 
    echo Error: GPU-Z.2.69.0.exe not found! 
    pause 
)
goto :menu

:aida
cls
echo Extracting and Launching AIDA64 Extreme...
cd /d "%~dp0CPU & GPU\AIDA64"
for %%f in (*aida*.zip) do (
    if not exist "Extracted_AIDA" mkdir "Extracted_AIDA"
    powershell -Command "Expand-Archive -Path '%%f' -DestinationPath 'Extracted_AIDA' -Force"
    start "" "Extracted_AIDA\aida64.exe"
    goto :menu
)
echo Error: AIDA64 ZIP archive not found!
pause
goto :menu

:cine
cls
echo Extracting and Launching Cinebench Benchmark...
cd /d "%~dp0CPU & GPU\Cinebench"
for %%f in (*cinebench*.zip) do (
    if not exist "Extracted_Cinebench" mkdir "Extracted_Cinebench"
    powershell -Command "Expand-Archive -Path '%%f' -DestinationPath 'Extracted_Cinebench' -Force"
    
    :: Launch standard executable
    if exist "Extracted_Cinebench\Cinebench.exe" ( start "" "Extracted_Cinebench\Cinebench.exe" & goto :menu )
    for %%e in ("Extracted_Cinebench\*cinebench*.exe") do ( start "" "%%e" & goto :menu )
    
    echo Error: Cinebench executable not found inside the ZIP!
    pause
    goto :menu
)
echo Error: Cinebench ZIP archive not found!
pause
goto :menu

:fur
cls
echo Extracting and Launching FurMark Stress Test...
cd /d "%~dp0CPU & GPU\FurMark"
for %%f in (*furmark*.zip) do (
    if not exist "Extracted_FurMark" mkdir "Extracted_FurMark"
    powershell -Command "Expand-Archive -Path '%%f' -DestinationPath 'Extracted_FurMark' -Force"
    
    :: Smart architecture detection for FurMark (64-bit vs 32-bit)
    if "%PROCESSOR_ARCHITECTURE%"=="AMD64" (
        if exist "Extracted_FurMark\FurMark64.exe" ( start "" "Extracted_FurMark\FurMark64.exe" & goto :menu )
        if exist "Extracted_FurMark\FurMark_x64.exe" ( start "" "Extracted_FurMark\FurMark_x64.exe" & goto :menu )
    )
    if exist "Extracted_FurMark\FurMark32.exe" ( start "" "Extracted_FurMark\FurMark32.exe" & goto :menu )
    if exist "Extracted_FurMark\FurMark_x32.exe" ( start "" "Extracted_FurMark\FurMark_x32.exe" & goto :menu )
    if exist "Extracted_FurMark\FurMark.exe" ( start "" "Extracted_FurMark\FurMark.exe" & goto :menu )
    for %%e in ("Extracted_FurMark\*.exe") do ( start "" "%%e" & goto :menu )
    
    echo Error: FurMark executable could not be targeted inside the ZIP!
    pause
    goto :menu
)
echo Error: FurMark ZIP archive not found!
pause
goto :menu

:cdi
cls
echo Extracting and Launching CrystalDiskInfo...
cd /d "%~dp0Storage & RAM\CrystalDiskInfo"
if exist "CrystalDiskInfo9_7_2.zip" (
    if not exist "Extracted_CDI" mkdir "Extracted_CDI"
    powershell -Command "Expand-Archive -Path 'CrystalDiskInfo9_7_2.zip' -DestinationPath 'Extracted_CDI' -Force"
    start "" "Extracted_CDI\DiskInfo64.exe"
) else (
    echo Error: CrystalDiskInfo9_7_2.zip not found!
    pause
)
goto :menu

:cdm
cls
echo Extracting and Launching CrystalDiskMark...
cd /d "%~dp0Storage & RAM\CrystalDiskMark"
if exist "CrystalDiskMark8_0_6.zip" (
    if not exist "Extracted_CDM" mkdir "Extracted_CDM"
    powershell -Command "Expand-Archive -Path 'CrystalDiskMark8_0_6.zip' -DestinationPath 'Extracted_CDM' -Force"
    start "" "Extracted_CDM\DiskMark64.exe"
) else (
    echo Error: CrystalDiskMark8_0_6.zip not found!
    pause
)
goto :menu

:hds
cls
echo Extracting and Launching Hard Disk Sentinel...
cd /d "%~dp0Storage & RAM\HD-Sentinel"
if exist "hdsentinel_pro_portable.zip" (
    if not exist "Extracted_HDS" mkdir "Extracted_HDS"
    powershell -Command "Expand-Archive -Path 'hdsentinel_pro_portable.zip' -DestinationPath 'Extracted_HDS' -Force"
    start "" "Extracted_HDS\HDSentinel.exe"
) else (
    echo Error: hdsentinel_pro_portable.zip not found!
    pause
)
goto :menu

:ram
cls
echo Launching Windows Memory Diagnostic...
mdsched.exe
goto :menu

:memtest
cls
echo Extracting MemTest86 Flashing Utility...
cd /d "%~dp0Storage & RAM\RAM\memtest86"
if exist "memtest86-usb.zip" (
    if not exist "Extracted_MemTest" mkdir "Extracted_MemTest"
    powershell -Command "Expand-Archive -Path 'memtest86-usb.zip' -DestinationPath 'Extracted_MemTest' -Force"
    start "" "Extracted_MemTest\imageUSB.exe"
    echo.
    echo [INFO] Run imageUSB to flash the tool onto your USB drive, then reboot to test!
    pause
) else (
    echo Error: memtest86-usb.zip not found!
    pause
)
goto :menu

:wifi
cls
echo Extracting and Launching WirelessNetView...
cd /d "%~dp0Network & Wi-Fi Diagnostics\WirelessNetView"
if exist "wirelessnetview.zip" (
    if not exist "Extracted_WiFi" mkdir "Extracted_WiFi"
    powershell -Command "Expand-Archive -Path 'wirelessnetview.zip' -DestinationPath 'Extracted_WiFi' -Force"
    start "" "Extracted_WiFi\WirelessNetView.exe"
) else (
    echo Error: wirelessnetview.zip not found!
    pause
)
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
start https://keyboard-mouse-tester-web-app.vercelapp
goto :menu
