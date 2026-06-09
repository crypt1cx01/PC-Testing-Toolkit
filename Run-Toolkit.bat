@echo off
:: =====================================================================
:: PC-Testing-Toolkit - Ultimate Automation Launcher (Part 1 - Final v1.0)
:: GitHub: https://github.com/crypt1cx01/PC-Testing-Toolkit
:: =====================================================================

title PC-Testing-Toolkit Launcher v1.0
mode con: cols=100 lines=34
chcp 65001 >nul

:: --- ADMIN PRIVILEGES CHECK ---
net session >nul 2>&1
if %errorLevel% neq 0 (
    echo ========================================================================
    echo            ERROR: ADMINISTRATOR PRIVILEGES REQUIRED
    echo ========================================================================
    if %errorLevel% == 0 (
        goto :MAIN_MENU
    ) else (
        echo [!] Requesting Run as Administrator...
        powershell -Command "Start-Process -FilePath '%0' -Verb RunAs"
        exit /b
    )
)

:: --- MAIN MENU LOOP ---
:MAIN_MENU
cls
color 0B
echo ====================================================================================================
echo   [--------------------------------------------------------------------------------------]
echo     P C   T E S T I N G   T O O L K I T   _   A U T O M A T I O N   L A U N C H E R
echo   [--------------------------------------------------------------------------------------]
echo     Main Portal - Managed Security and Stability                  Created by crypt1cx01
echo ====================================================================================================
echo.
echo   1] CPU and GPU Diagnostics Menu                        4] Storage and RAM Testing Menu
echo   2] System Stress Testing Menu                          5] Network and Peripherals Menu
echo   3] Display and Monitor Diagnostics Menu                6] Visit Project GitHub
echo                       ======================   ======================
echo                                            0] Exit
echo                       ======================   ======================
echo.
echo ====================================================================================================
set /p choice="Enter your choice: "

if "%choice%"=="1" goto DIAGNOSTICS_MENU
if "%choice%"=="2" goto STRESS_MENU
if "%choice%"=="3" goto DISPLAY_MENU
if "%choice%"=="4" goto STORAGE_MENU
if "%choice%"=="5" goto NET_PERIPH_MENU
if "%choice%"=="6" goto VISIT_GITHUB
if "%choice%"=="0" exit
goto MAIN_MENU
:: =====================================================================
:: --- 1. DIAGNOSTICS MENU ---
:: =====================================================================
:DIAGNOSTICS_MENU
cls
color 0A
echo ====================================================================================================
echo                                  CPU and GPU DIAGNOSTICS and VERIFICATION
echo ====================================================================================================
echo.
echo   1] Launch CPU-Z             (Verify CPU, Motherboard and RAM Specs - Auto Extract)
echo   2] Launch GPU-Z             (Verify Graphics Card and Detect Fake GPUs)
echo   3] Run Speccy Setup         (Install Speccy Component and Live Thermal Monitor)
echo                            ======================   ======================
echo                                       0] Return to Main Menu
echo                            ======================   ======================
echo.
echo ====================================================================================================
set /p diag_choice="Select an option: "

if "%diag_choice%"=="1" ( call :RunCPUZ & goto DIAGNOSTICS_MENU )
if "%diag_choice%"=="2" ( call :RunGPUZ & goto DIAGNOSTICS_MENU )
if "%diag_choice%"=="3" ( call :RunSpeccy & goto DIAGNOSTICS_MENU )
if "%diag_choice%"=="0" goto MAIN_MENU
goto DIAGNOSTICS_MENU

:: =====================================================================
:: --- 2. STRESS TESTING MENU ---
:: =====================================================================
:STRESS_MENU
cls
color 0C
echo ====================================================================================================
echo                   SYSTEM STRESS TESTING and BENCHMARKS (Warning: Watch Temperatures!)
echo ====================================================================================================
echo.
echo   1] Launch AIDA64 Extreme    (Full System Stability Test - Auto Extract)
echo   2] Launch Cinebench         (CPU Rendering Benchmark - Auto Extract)
echo   3] Launch FurMark (32/64)   (Heavy GPU Burn-in Stress Test - Select Architecture)
echo                            ======================   ======================
echo                                       0] Return to Main Menu
echo                            ======================   ======================
echo.
echo ====================================================================================================
set /p stress_choice="Select an option: "

if "%stress_choice%"=="1" ( call :RunAIDA & goto STRESS_MENU )
if "%stress_choice%"=="2" ( call :RunCinebench & goto STRESS_MENU )
if "%stress_choice%"=="3" ( call :FurMarkArchitectureMenu & goto STRESS_MENU )
if "%stress_choice%"=="0" goto MAIN_MENU
goto STRESS_MENU
:: =====================================================================
:: --- 3. DISPLAY & MONITOR MENU ---
:: =====================================================================
:DISPLAY_MENU
cls
color 0D
echo ====================================================================================================
echo                                    DISPLAY and MONITOR DIAGNOSTICS
echo ====================================================================================================
echo.
echo   1] Launch UDPixel22         (Stuck/Dead Pixel Fixer Utility - Auto Extract)
echo   2] Open Dead Pixel Buddy    (Full-Screen Solid Colors Screen Tester)
echo   3] Open EIZO Monitor Test   (Advanced Panel and Convergence Tester)
echo   4] Open TestUFO Motion      (Monitor Refresh Rate and Ghosting Analyzer)
echo                            ======================   ======================
echo                                       0] Return to Main Menu
echo                            ======================   ======================
echo.
echo ====================================================================================================
set /p disp_choice="Select an option: "

if "%disp_choice%"=="1" ( call :RunUDPixel & goto DISPLAY_MENU )
if "%disp_choice%"=="2" ( start https://deadpixelbuddy.com & goto DISPLAY_MENU )
if "%disp_choice%"=="3" ( start https://www.eizo.be/monitor-test & goto DISPLAY_MENU )
if "%disp_choice%"=="4" ( start https://testufo.com & goto DISPLAY_MENU )
if "%disp_choice%"=="0" goto MAIN_MENU
goto DISPLAY_MENU

:: =====================================================================
:: --- 4. STORAGE and RAM MENU ---
:: =====================================================================
:STORAGE_MENU
cls
color 09
echo ====================================================================================================
echo                                      STORAGE and RAM DIAGNOSTICS
echo ====================================================================================================
echo.
echo   1] Launch CrystalDiskInfo       (Check Drive Health/Smart - Auto Extract)
echo   2] Launch CrystalDiskMark       (Drive Speed Benchmark - Fixed v9.0.3 Auto Extract)
echo   3] Launch Hard Disk Sentinel    (Deep Drive Life Diagnostics - Deep RAR Extract Fixed)
echo   4] Run Windows RAM Test         (Native Windows Memory Diagnostics)
echo   5] Create Bootable MemTest86    (Flash MemTest86 Utility - Auto Extract)
echo                            ======================   ======================
echo                                       0] Return to Main Menu
echo                            ======================   ======================
echo.
echo ====================================================================================================
set /p store_choice="Select an option: "

if "%store_choice%"=="1" ( call :RunCDI & goto STORAGE_MENU )
if "%store_choice%"=="2" ( call :RunCDM & goto STORAGE_MENU )
if "%store_choice%"=="3" ( call :RunHDS & goto STORAGE_MENU )
if "%store_choice%"=="4" ( mdsched.exe & goto STORAGE_MENU )
if "%store_choice%"=="5" ( call :RunMemTest & goto STORAGE_MENU )
if "%store_choice%"=="0" goto MAIN_MENU
goto STORAGE_MENU
:: =====================================================================
:: --- 5. NETWORK and PERIPHERALS MENU ---
:: =====================================================================
:NET_PERIPH_MENU
cls
color 0E
echo ====================================================================================================
echo                              NETWORK, BATTERY and PERIPHERALS DIAGNOSTICS
echo ====================================================================================================
echo.
echo   1] Open WirelessNetView        (Monitor Nearby WiFi Networks - Auto Extract)
echo   2] Open Battery HTML Report    (Generates Detailed Windows Laptop Battery Report)
echo   3] Launch Keyboard Utility     (Test Keyboard Ghost Typing - Direct Executable)
echo   4] Open Webcam and Mic Test    (Launches Web App to Test Inputs Online)
echo   5] Open Audio and Speaker Test (Launches Frequency Generator App Online)
echo   6] Open Peripherals Tester     (Launches Web App to Test Keyboard and Mouse Online)
echo                            ======================   ======================
echo                                       0] Return to Main Menu
echo                            ======================   ======================
echo.
echo ====================================================================================================
set /p net_choice="Select an option: "

if "%net_choice%"=="1" ( call :RunWiFi & goto NET_PERIPH_MENU )
if "%net_choice%"=="2" ( call :RunBatteryReport & goto NET_PERIPH_MENU )
if "%net_choice%"=="3" ( call :RunKeyboardTest & goto NET_PERIPH_MENU )
if "%net_choice%"=="4" ( start https://webcamtests.com & goto NET_PERIPH_MENU )
if "%net_choice%"=="5" ( start https://audiocheck.net & goto NET_PERIPH_MENU )
if "%net_choice%"=="6" ( start https://keyboard-mouse-tester-web-app.vercel.app & goto NET_PERIPH_MENU )
if "%net_choice%"=="0" goto MAIN_MENU
goto NET_PERIPH_MENU

:: =====================================================================
:: --- SUBROUTINES: SAFE EXECUTION ENGINE (A to G) ---
:: =====================================================================

:RunCPUZ
cls
echo Extracting and Launching CPU-Z...
cd /d "%~dp0CPU & GPU\cpu-z"
if exist "cpu-z_2.20.1-en.zip" (
    if not exist "Extracted_CPUZ" mkdir "Extracted_CPUZ"
    powershell -Command "Expand-Archive -Path 'cpu-z_2.20.1-en.zip' -DestinationPath 'Extracted_CPUZ' -Force"
    if "%PROCESSOR_ARCHITECTURE%"=="AMD64" (
        if exist "Extracted_CPUZ\cpuz_x64.exe" ( start "" "Extracted_CPUZ\cpuz_x64.exe" & exit /b )
    )
    if exist "Extracted_CPUZ\cpuz_x32.exe" ( start "" "Extracted_CPUZ\cpuz_x32.exe" & exit /b )
    if exist "Extracted_CPUZ\cpuz.exe" ( start "" "Extracted_CPUZ\cpuz.exe" & exit /b )
    echo Error: CPU-Z executable could not be targeted inside the ZIP!
) else (
    echo Error: cpu-z_2.20.1-en.zip not found!
)
pause
exit /b

:RunGPUZ
cls
echo Launching GPU-Z...
cd /d "%~dp0CPU & GPU\gpu-z"
if exist "GPU-Z.2.69.0.exe" ( 
    start "" "GPU-Z.2.69.0.exe" 
) else ( 
    echo Error: GPU-Z.2.69.0.exe not found! 
    pause 
)
exit /b

:RunSpeccy
cls
echo Launching Speccy Setup Wizard...
cd /d "%~dp0CPU & GPU\Speccy"
if exist "spsetup133.exe" (
    start "" "spsetup133.exe"
) else (
    echo Error: spsetup133.exe not found!
    pause
)
exit /b

:RunUDPixel
cls
dism /online /get-featureinfo /featurename:NetFx3 | findstr /i "Enabled" >nul 2>&1
if %errorlevel% equ 0 (
    goto :StartExtraction
) else (
    echo [!] .NET Framework 2.0/3.5 is missing.
    echo [+] Installing NetFx20SP1_x64.exe from your local files...
    
    if exist "%~dp0Display & Monitor\UDPixel22\NetFx20SP1_x64.exe" (
        start /wait "" "%~dp0Display & Monitor\UDPixel22\NetFx20SP1_x64.exe" /quiet /norestart
        echo [+] Local .NET Framework installation completed.
    ) else (
        echo [X] Warning: NetFx20SP1_x64.exe not found in local path! Trying online activation...
        dism /online /enable-feature /featurename:NetFx3 /all /norestart /quiet
    )
    goto :StartExtraction
)

:StartExtraction
echo Extracting and Launching UDPixel22...
cd /d "%~dp0Display & Monitor"
set "ud_found="
for /r %%f in (*UDPixel*.zip) do (
    set "ud_found=1"
    if not exist "Extracted_UDPixel" mkdir "Extracted_UDPixel"
    powershell -Command "Expand-Archive -Path '%%f' -DestinationPath 'Extracted_UDPixel' -Force"
    if exist "Extracted_UDPixel\UDPixel.exe" ( start "" "Extracted_UDPixel\UDPixel.exe" & exit /b )
    for %%e in ("Extracted_UDPixel\*.exe") do ( start "" "%%e" & exit /b )
    echo Error: UDPixel executable could not be targeted inside the ZIP!
    pause
)
if not defined ud_found (
    echo Error: UDPixel ZIP archive not found!
    pause
)
exit /b

:RunAIDA
cls
reg query "HKLM\SOFTWARE\Microsoft\VisualStudio\14.0\VC\Runtimes\x64" /v Installed >nul 2>&1
if %errorlevel% equ 0 (
    goto :StartAIDAExtraction
) else (
    echo [!] Microsoft Visual C++ Redistributable is missing.
    echo [+] Installing VC_redist.x64.exe from your local files...
    
    if exist "%~dp0CPU & GPU\AIDA64\VC_redist.x64.exe" (
        start /wait "" "%~dp0CPU & GPU\AIDA64\VC_redist.x64.exe" /quiet /norestart
        echo [+] Local VC Redistributable installation completed.
    ) else (
        echo [X] Warning: VC_redist.x64.exe not found in local path!
        timeout /t 3 >nul
    )
    goto :StartAIDAExtraction
)

:StartAIDAExtraction
echo Extracting and Launching AIDA64 Extreme...
cd /d "%~dp0CPU & GPU\AIDA64"
set "aida_found="
for %%f in (*aida*.zip) do (
    set "aida_found=1"
    if not exist "Extracted_AIDA" mkdir "Extracted_AIDA"
    powershell -Command "Expand-Archive -Path '%%f' -DestinationPath 'Extracted_AIDA' -Force"
    start "" "Extracted_AIDA\aida64.exe"
)
if not defined aida_found (
    echo Error: AIDA64 ZIP archive not found!
    pause
)
exit /b


:RunCinebench
cls
echo Extracting and Launching Cinebench Benchmark...
cd /d "%~dp0CPU & GPU\Cinebench"
set "cine_found="
for %%f in (*cinebench*.zip) do (
    set "cine_found=1"
    if not exist "Extracted_Cinebench" mkdir "Extracted_Cinebench"
    powershell -Command "Expand-Archive -Path '%%f' -DestinationPath 'Extracted_Cinebench' -Force"
    if exist "Extracted_Cinebench\CINEBENCH R23\Cinebench.exe" (
        cd "Extracted_Cinebench\CINEBENCH R23"
        start "" "Cinebench.exe"
        exit /b
    )
    echo Error: Cinebench.exe could not be targeted in 'Extracted_Cinebench\CINEBENCH R23\'!
    pause
)
if not defined cine_found (
    echo Error: Cinebench ZIP archive not found!
    pause
)
exit /b

:FurMarkArchitectureMenu
cls
color 0C
echo ====================================================================================================
echo                                   FURMARK ARCHITECTURE SELECTION
echo ====================================================================================================
echo.
echo   1] Launch FurMark 64-Bit   (Recommended for modern PCs)
echo   2] Launch FurMark 32-Bit   (For legacy x86 systems)
echo                            ======================   ======================
echo                                       0] Return to Main Menu
echo                            ======================   ======================
echo.
echo ====================================================================================================
set /p fur_bit="Select version: "
if "%fur_bit%"=="1" ( call :RunFurMark64 & exit /b )
if "%fur_bit%"=="2" ( call :RunFurMark32 & exit /b )
if "%fur_bit%"=="0" exit /b
goto FurMarkArchitectureMenu

:RunFurMark64
cls
echo Extracting and Launching FurMark 64-Bit...
cd /d "%~dp0CPU & GPU\FurMark"
if exist "FurMark_2.10.2_win64.zip" (
    if not exist "Extracted_FurMark64" mkdir "Extracted_FurMark64"
    powershell -Command "Expand-Archive -Path 'FurMark_2.10.2_win64.zip' -DestinationPath 'Extracted_FurMark64' -Force"
    if exist "Extracted_FurMark64\FurMark_win64\FurMark_GUI.exe" (
        cd "Extracted_FurMark64\FurMark_win64"
        start "" "FurMark_GUI.exe"
        exit /b
    )
    echo Error: FurMark_GUI.exe could not be targeted in 'Extracted_FurMark64\FurMark_win64\'!
) else (
    echo Error: FurMark_2.10.2_win64.zip not found!
)
pause
exit /b

:RunFurMark32
cls
color 0A
echo Extracting and Launching FurMark 32-Bit...
cd /d "%~dp0CPU & GPU\FurMark"
if exist "FurMark_2.10.2_win32.zip" (
    if not exist "Extracted_FurMark32" mkdir "Extracted_FurMark32"
    powershell -Command "Expand-Archive -Path 'FurMark_2.10.2_win32.zip' -DestinationPath 'Extracted_FurMark32' -Force"
    if exist "Extracted_FurMark32\FurMark_win32\FurMark_GUI.exe" (
        cd "Extracted_FurMark32\FurMark_win32"
        start "" "FurMark_GUI.exe"
        exit /b
    )
    echo Error: FurMark_GUI.exe could not be targeted in 'Extracted_FurMark32\FurMark_win32\'!
) else (
    echo Error: FurMark_2.10.2_win32.zip not found!
)
pause
exit /b

:RunCDI
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
exit /b

:RunCDM
cls
echo Extracting and Launching CrystalDiskMark v9.0.3...
cd /d "%~dp0Storage & RAM\CrystalDiskMark"
if exist "CrystalDiskMark9_0_3.zip" (
    if not exist "Extracted_CDM" mkdir "Extracted_CDM"
    powershell -Command "Expand-Archive -Path 'CrystalDiskMark9_0_3.zip' -DestinationPath 'Extracted_CDM' -Force"
    start "" "Extracted_CDM\DiskMark64.exe"
) else (
    echo Error: CrystalDiskMark9_0_3.zip not found!
    pause
)
exit /b

:RunHDS
cls
echo Extracting Hard Disk Sentinel RAR Package...
cd /d "%~dp0Storage & RAM\HD-Sentinel"
if exist "hdsentinel_setup.rar" (
    if not exist "Extracted_HDS" mkdir "Extracted_HDS"
    tar -xf "hdsentinel_setup.rar" -C "Extracted_HDS" 2>nul
    if exist "Extracted_HDS\hdsentinel_setup\hdsentinel_setup.exe" (
        cd "Extracted_HDS\hdsentinel_setup"
        start "" "hdsentinel_setup.exe"
        exit /b
    )
    echo Error: hdsentinel_setup.exe could not be found inside 'Extracted_HDS\hdsentinel_setup\'!
) else (
    echo Error: hdsentinel_setup.rar not found!
)
pause
exit /b

:RunMemTest
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
exit /b

:RunWiFi
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
exit /b

:RunKeyboardTest
cls
echo Launching Keyboard Test Utility...
cd /d "%~dp0Peripherals\keyboard-test"
if exist "keyboardtestutility.exe" (
    start "" "keyboardtestutility.exe"
    exit /b
) else (
    echo Error: keyboardtestutility.exe not found in 'Peripherals\keyboard-test\'!
    pause
)
exit /b

:RunBatteryReport
cls
color 0A
echo Generating Detailed Laptop Battery Report...
powercfg /batteryreport /output "%~dp0battery_report.html" >nul 2>&1
if exist "%~dp0battery_report.html" (
    echo.
    echo Battery Report generated successfully!
    echo Opening 'battery_report.html' in your default browser...
    start "" "%~dp0battery_report.html"
) else (
    echo Error: Windows powercfg failed to generate the report.
    echo Make sure you are testing on a laptop with a battery pack.
)
pause
exit /b

:VISIT_GITHUB
echo Opening GitHub Repository in your browser...
start https://github.com/crypt1cx01/PC-Testing-Toolkit
goto MAIN_MENU
