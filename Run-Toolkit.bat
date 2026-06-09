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
    echo [!] Requesting Run as Administrator...
    powershell -Command "Start-Process -FilePath '%~f0' -Verb RunAs"
    exit /b
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

set "choice="
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
echo                       ======================   ======================
echo                                      0] Return to Main Menu
echo                       ======================   ======================
echo.
echo ====================================================================================================

set "diag_choice="
set /p diag_choice="Select an option: "

if "%diag_choice%"=="1" call :RunCPUZ
if "%diag_choice%"=="1" goto DIAGNOSTICS_MENU

if "%diag_choice%"=="2" call :RunGPUZ
if "%diag_choice%"=="2" goto DIAGNOSTICS_MENU

if "%diag_choice%"=="3" call :RunSpeccy
if "%diag_choice%"=="3" goto DIAGNOSTICS_MENU

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

set "stress_choice="
set /p stress_choice="Select an option: "

if "%stress_choice%"=="1" call :RunAIDA
if "%stress_choice%"=="1" goto STRESS_MENU

if "%stress_choice%"=="2" call :RunCinebench
if "%stress_choice%"=="2" goto STRESS_MENU

if "%stress_choice%"=="3" call :FurMarkArchitectureMenu
if "%stress_choice%"=="3" goto STRESS_MENU

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
echo                       ======================   ======================
echo                                      0] Return to Main Menu
echo                       ======================   ======================
echo.
echo ====================================================================================================

set "disp_choice="
set /p disp_choice="Select an option: "

if "%disp_choice%"=="1" call :RunUDPixel
if "%disp_choice%"=="1" goto DISPLAY_MENU

if "%disp_choice%"=="2" start "" "https://deadpixelbuddy.com"
if "%disp_choice%"=="2" goto DISPLAY_MENU

if "%disp_choice%"=="3" start "" "https://www.eizo.be/monitor-test"
if "%disp_choice%"=="3" goto DISPLAY_MENU

if "%disp_choice%"=="4" start "" "https://testufo.com"
if "%disp_choice%"=="4" goto DISPLAY_MENU

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
echo                       ======================   ======================
echo                                      0] Return to Main Menu
echo                       ======================   ======================
echo.
echo ====================================================================================================

set "store_choice="
set /p store_choice="Select an option: "

if "%store_choice%"=="1" call :RunCDI
if "%store_choice%"=="1" goto STORAGE_MENU

if "%store_choice%"=="2" call :RunCDM
if "%store_choice%"=="2" goto STORAGE_MENU

if "%store_choice%"=="3" call :RunHDS
if "%store_choice%"=="3" goto STORAGE_MENU

if "%store_choice%"=="4" start "" mdsched.exe
if "%store_choice%"=="4" goto STORAGE_MENU

if "%store_choice%"=="5" call :RunMemTest
if "%store_choice%"=="5" goto STORAGE_MENU

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
echo   7] Launch HWMonitor            (Hardware Temperature and Power Monitor - Auto Extract)
echo                       ======================   ======================
echo                                      0] Return to Main Menu
echo                       ======================   ======================
echo.
echo ====================================================================================================

set "net_choice="
set /p net_choice="Select an option: "

if "%net_choice%"=="1" call :RunWiFi
if "%net_choice%"=="1" goto NET_PERIPH_MENU

if "%net_choice%"=="2" call :RunBatteryReport
if "%net_choice%"=="2" goto NET_PERIPH_MENU

if "%net_choice%"=="3" call :RunKeyboardTest
if "%net_choice%"=="3" goto NET_PERIPH_MENU

if "%net_choice%"=="4" start "" "https://webcamtests.com"
if "%net_choice%"=="4" goto NET_PERIPH_MENU

if "%net_choice%"=="5" start "" "https://audiocheck.net"
if "%net_choice%"=="5" goto NET_PERIPH_MENU

if "%net_choice%"=="6" start "" "https://keyboard-mouse-tester-web-app.vercel.app"
if "%net_choice%"=="6" goto NET_PERIPH_MENU

if "%net_choice%"=="7" call :RunHWMonitor
if "%net_choice%"=="7" goto NET_PERIPH_MENU

if "%net_choice%"=="0" goto MAIN_MENU

goto NET_PERIPH_MENU

:: =====================================================================
:: --- SUBROUTINES: SAFE EXECUTION ENGINE ---
:: =====================================================================

:RunCPUZ
cls
echo [!] Preparing CPU-Z Utility...

cd /d "%~dp0\CPU & GPU\cpu-z" 2>nul

if not exist "cpu-z_2.20.1-en.zip" (
    echo [X] Error: 'cpu-z_2.20.1-en.zip' not found in the directory!
    pause
    cd /d "%~dp0"
    exit /b
)

if exist "Extracted_CPUZ\cpuz_x64.exe" goto Launch64
if exist "Extracted_CPUZ\cpuz_x32.exe" goto Launch32
if exist "Extracted_CPUZ\cpuz.exe" goto LaunchGeneric

echo [!] Extracting package components via PowerShell (Please wait)...
if not exist "Extracted_CPUZ" mkdir "Extracted_CPUZ"
powershell -Command "Expand-Archive -Path 'cpu-z_2.20.1-en.zip' -DestinationPath 'Extracted_CPUZ' -Force"

:Launch64
if "%PROCESSOR_ARCHITECTURE%"=="AMD64" (
    if exist "Extracted_CPUZ\cpuz_x64.exe" (
        start "" "Extracted_CPUZ\cpuz_x64.exe"
        cd /d "%~dp0"
        exit /b
    )
)

:Launch32
if exist "Extracted_CPUZ\cpuz_x32.exe" (
    start "" "Extracted_CPUZ\cpuz_x32.exe"
    cd /d "%~dp0"
    exit /b
)

:LaunchGeneric
if exist "Extracted_CPUZ\cpuz.exe" (
    start "" "Extracted_CPUZ\cpuz.exe"
    cd /d "%~dp0"
    exit /b
)

echo [X] Error: CPU-Z executable could not be targeted inside the ZIP!
pause
cd /d "%~dp0"
exit /b

:RunGPUZ
cls
echo [!] Launching GPU-Z...
cd /d "%~dp0\CPU & GPU\gpu-z" 2>nul
if exist "GPU-Z.2.69.0.exe" ( 
    start "" "GPU-Z.2.69.0.exe" 
    cd /d "%~dp0"
    exit /b
) else ( 
    echo [X] Error: GPU-Z.2.69.0.exe not found! 
    pause 
)
cd /d "%~dp0"
exit /b

:RunSpeccy
cls
echo [!] Launching Speccy Setup Wizard...
cd /d "%~dp0\CPU & GPU\Speccy" 2>nul
if exist "spsetup133.exe" (
    start "" "spsetup133.exe"
    cd /d "%~dp0"
    exit /b
) else (
    echo [X] Error: spsetup133.exe not found!
    pause
)
cd /d "%~dp0"
exit /b

:RunUDPixel
cls
echo [!] Checking .NET Framework status...
dism /online /get-featureinfo /featurename:NetFx3 | findstr /i "Enabled" >nul 2>&1
if %errorlevel% equ 0 (
    goto :StartExtraction
) else (
    echo [!] .NET Framework 2.0/3.5 is missing.
    echo [+] Installing NetFx20SP1_x64.exe from your local files...
    
    if exist "%~dp0\Display & Monitor\UDPixel22\NetFx20SP1_x64.exe" (
        start /wait "" "%~dp0\Display & Monitor\UDPixel22\NetFx20SP1_x64.exe" /quiet /norestart
        echo [+] Local .NET Framework installation completed.
    ) else (
        echo [X] Warning: NetFx20SP1_x64.exe not found locally! Trying online activation...
        dism /online /enable-feature /featurename:NetFx3 /all /norestart /quiet
    )
    goto :StartExtraction
)

:StartExtraction
echo [!] Preparing UDPixel22...

:: تأمين مسار الانتقال لوجود علامة &
cd /d "%~dp0\Display & Monitor\UDPixel22" 2>nul

:: الفحص الذكي: لو البرنامج مفكوك وموجود مسبقاً، بيدخل الفولدر بتاعه ويشغله فوراً عشان نمنع الـ System Error
if exist "Extracted_UDPixel\UDPixel.exe" (
    cd "Extracted_UDPixel"
    start "" "UDPixel.exe"
    cd /d "%~dp0"
    exit /b
)

set "ud_found="
for %%f in (*UDPixel*.zip *udpixel*.zip) do (
    set "ud_found=1"
    if not exist "Extracted_UDPixel" mkdir "Extracted_UDPixel"
    powershell -Command "Expand-Archive -Path '%%f' -DestinationPath 'Extracted_UDPixel' -Force"
    if exist "Extracted_UDPixel\UDPixel.exe" (
        cd "Extracted_UDPixel"
        start "" "UDPixel.exe"
        :: اللمسة السحرية: إعادة مسار الـ Batch للمجلد الرئيسي قبل الخروج للحفاظ على استقرار بقية القوائم
        cd /d "%~dp0"
        exit /b
    )
    
    :: دعم إضافي في حال كان الملف التنفيذي باسم مختلف داخل الفولدر المجلد
    if exist "Extracted_UDPixel" (
        cd "Extracted_UDPixel"
        for %%e in (*.exe) do (
            start "" "%%e"
            cd /d "%~dp0"
            exit /b
        )
    )
    echo Error: UDPixel.exe could not be targeted in 'Extracted_UDPixel\'!
    pause
)

if not defined ud_found (
    echo Error: UDPixel ZIP archive not found!
    pause
)

:: للأمان لو فشل كل شيء، يرجع للمسار الرئيسي
cd /d "%~dp0"
exit /b


:RunAIDA
cls
echo [!] Checking Microsoft Visual C++ status...
reg query "HKLM\SOFTWARE\Microsoft\VisualStudio\14.0\VC\Runtimes\x64" /v Installed >nul 2>&1
if %errorlevel% equ 0 (
    goto :StartAIDAExtraction
) else (
    echo [!] Microsoft Visual C++ Redistributable is missing.
    echo [+] Installing VC_redist.x64.exe from your local files...
    
    if exist "%~dp0\CPU & GPU\AIDA64\VC_redist.x64.exe" (
        start /wait "" "%~dp0\CPU & GPU\AIDA64\VC_redist.x64.exe" /quiet /norestart
        echo [+] Local VC Redistributable installation completed.
    ) else (
        echo [X] Warning: VC_redist.x64.exe not found in local path!
        timeout /t 3 >nul
    )
    goto :StartAIDAExtraction
)

:StartAIDAExtraction
echo [!] Preparing AIDA64 Extreme...
cd /d "%~dp0\CPU & GPU\AIDA64" 2>nul

if exist "Extracted_AIDA\aida64.exe" (
    start "" "Extracted_AIDA\aida64.exe"
    cd /d "%~dp0"
    exit /b
)

if exist "*aida*.zip" (
    echo [!] Extracting AIDA64 components via PowerShell (Please wait)...
    if not exist "Extracted_AIDA" mkdir "Extracted_AIDA"
    powershell -Command "Expand-Archive -Path '*aida*.zip' -DestinationPath 'Extracted_AIDA' -Force"
    
    if exist "Extracted_AIDA\aida64.exe" (
        start "" "Extracted_AIDA\aida64.exe"
        cd /d "%~dp0"
        exit /b
    ) else (
        echo [X] Error: aida64.exe not found inside the extracted folder!
        pause
    )
) else (
    echo [X] Error: AIDA64 ZIP archive not found!
    pause
)
cd /d "%~dp0"
exit /b

:RunCinebench
cls
echo Extracting and Launching Cinebench Benchmark...

cd /d "%~dp0\CPU & GPU\Cinebench" 2>nul

if exist "Extracted_Cinebench\CINEBENCH R23\Cinebench.exe" (
    cd "Extracted_Cinebench\CINEBENCH R23"
    start "" "Cinebench.exe"
    cd /d "%~dp0"
    exit /b
)

set "cine_found="
for %%f in (*CINEBENCH*.zip *cinebench*.zip) do (
    set "cine_found=1"
    if not exist "Extracted_Cinebench" mkdir "Extracted_Cinebench"
    powershell -Command "Expand-Archive -Path '%%f' -DestinationPath 'Extracted_Cinebench' -Force"
    if exist "Extracted_Cinebench\CINEBENCH R23\Cinebench.exe" (
        cd "Extracted_Cinebench\CINEBENCH R23"
        start "" "Cinebench.exe"
        cd /d "%~dp0"
        exit /b
    )
    echo Error: Cinebench.exe could not be targeted in 'Extracted_Cinebench\CINEBENCH R23\'!
    pause
)

if not defined cine_found (
    echo Error: Cinebench ZIP archive not found!
    pause
)

cd /d "%~dp0"
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
echo                                       0] Return to Stress Menu
echo                            ======================   ======================
echo.
echo ====================================================================================================

set "fur_bit="
set /p fur_bit="Select version: "

if "%fur_bit%"=="1" call :RunFurMark64
if "%fur_bit%"=="1" exit /b

if "%fur_bit%"=="2" call :RunFurMark32
if "%fur_bit%"=="2" exit /b

if "%fur_bit%"=="0" exit /b

goto FurMarkArchitectureMenu

:RunFurMark64
cls
echo [!] Preparing FurMark 64-Bit...
cd /d "%~dp0\CPU & GPU\FurMark" 2>nul

if exist "Extracted_FurMark64\FurMark_win64\FurMark_GUI.exe" (
    start "" "Extracted_FurMark64\FurMark_win64\FurMark_GUI.exe"
    cd /d "%~dp0"
    exit /b
)

if exist "FurMark_2.10.2_win64.zip" (
    echo [!] Extracting FurMark 64-Bit via PowerShell...
    if not exist "Extracted_FurMark64" mkdir "Extracted_FurMark64"
    powershell -Command "Expand-Archive -Path 'FurMark_2.10.2_win64.zip' -DestinationPath 'Extracted_FurMark64' -Force"
    
    if exist "Extracted_FurMark64\FurMark_win64\FurMark_GUI.exe" (
        start "" "Extracted_FurMark64\FurMark_win64\FurMark_GUI.exe"
        cd /d "%~dp0"
        exit /b
    ) else (
        echo [X] Error: FurMark_GUI.exe could not be targeted inside the zip folder!
        pause
    )
) else (
    echo [X] Error: FurMark_2.10.2_win64.zip not found!
    pause
)
cd /d "%~dp0"
exit /b

:RunFurMark32
cls
echo [!] Preparing FurMark 32-Bit...
cd /d "%~dp0\CPU & GPU\FurMark" 2>nul

if exist "Extracted_FurMark32\FurMark_win32\FurMark_GUI.exe" (
    start "" "Extracted_FurMark32\FurMark_win32\FurMark_GUI.exe"
    cd /d "%~dp0"
    exit /b
)

if exist "FurMark_2.10.2_win32.zip" (
    echo [!] Extracting FurMark 32-Bit via PowerShell...
    if not exist "Extracted_FurMark32" mkdir "Extracted_FurMark32"
    powershell -Command "Expand-Archive -Path 'FurMark_2.10.2_win32.zip' -DestinationPath 'Extracted_FurMark32' -Force"
    
    if exist "Extracted_FurMark32\FurMark_win32\FurMark_GUI.exe" (
        start "" "Extracted_FurMark32\FurMark_win32\FurMark_GUI.exe"
        cd /d "%~dp0"
        exit /b
    ) else (
        echo [X] Error: FurMark_GUI.exe could not be targeted inside the zip folder!
        pause
    )
) else (
    echo [X] Error: FurMark_2.10.2_win32.zip not found!
    pause
)
cd /d "%~dp0"
exit /b

:RunCDI
cls
echo [!] Preparing CrystalDiskInfo...
cd /d "%~dp0\Storage & RAM\CrystalDiskInfo" 2>nul

if exist "Extracted_CDI\DiskInfo64.exe" (
    start "" "Extracted_CDI\DiskInfo64.exe"
    cd /d "%~dp0"
    exit /b
)

if exist "CrystalDiskInfo9_7_2.zip" (
    echo [!] Extracting components via PowerShell...
    if not exist "Extracted_CDI" mkdir "Extracted_CDI"
    powershell -Command "Expand-Archive -Path 'CrystalDiskInfo9_7_2.zip' -DestinationPath 'Extracted_CDI' -Force"
    
    if exist "Extracted_CDI\DiskInfo64.exe" (
        start "" "Extracted_CDI\DiskInfo64.exe"
        cd /d "%~dp0"
        exit /b
    ) else (
        echo [X] Error: DiskInfo64.exe not found inside the zip!
        pause
    )
) else (
    echo [X] Error: CrystalDiskInfo9_7_2.zip not found!
    pause
)
cd /d "%~dp0"
exit /b

:RunCDM
cls
echo [!] Preparing CrystalDiskMark v9.0.3...
cd /d "%~dp0\Storage & RAM\CrystalDiskMark" 2>nul

if exist "Extracted_CDM\DiskMark64.exe" (
    start "" "Extracted_CDM\DiskMark64.exe"
    cd /d "%~dp0"
    exit /b
)

if exist "CrystalDiskMark9_0_3.zip" (
    echo [!] Extracting components via PowerShell...
    if not exist "Extracted_CDM" mkdir "Extracted_CDM"
    powershell -Command "Expand-Archive -Path 'CrystalDiskMark9_0_3.zip' -DestinationPath 'Extracted_CDM' -Force"
    
    if exist "Extracted_CDM\DiskMark64.exe" (
        start "" "Extracted_CDM\DiskMark64.exe"
        cd /d "%~dp0"
        exit /b
    ) else (
        echo [X] Error: DiskMark64.exe not found inside the zip!
        pause
    )
) else (
    echo [X] Error: CrystalDiskMark9_0_3.zip not found!
    pause
)
cd /d "%~dp0"
exit /b

:RunHDS
cls
echo [!] Preparing Hard Disk Sentinel...
cd /d "%~dp0\Storage & RAM\HD-Sentinel" 2>nul

if exist "Extracted_HDS\hdsentinel_setup.exe" (
    start "" "Extracted_HDS\hdsentinel_setup.exe"
    cd /d "%~dp0"
    exit /b
)
if exist "Extracted_HDS\hdsentinel_setup\hdsentinel_setup.exe" (
    start "" "Extracted_HDS\hdsentinel_setup\hdsentinel_setup.exe"
    cd /d "%~dp0"
    exit /b
)

if exist "hdsentinel_setup.zip" (
    echo [!] Extracting Hard Disk Sentinel via PowerShell...
    if not exist "Extracted_HDS" mkdir "Extracted_HDS"
    powershell -Command "Expand-Archive -Path 'hdsentinel_setup.zip' -DestinationPath 'Extracted_HDS' -Force"
    
    if exist "Extracted_HDS\hdsentinel_setup.exe" (
        start "" "Extracted_HDS\hdsentinel_setup.exe"
        cd /d "%~dp0"
        exit /b
    )
    if exist "Extracted_HDS\hdsentinel_setup\hdsentinel_setup.exe" (
        start "" "Extracted_HDS\hdsentinel_setup\hdsentinel_setup.exe"
        cd /d "%~dp0"
        exit /b
    )
    echo [X] Error: hdsentinel_setup.exe could not be targeted inside the package!
    pause
) else (
    if exist "hdsentinel_setup.rar" (
        echo [!] Extracting RAR package via native tar utility...
        if not exist "Extracted_HDS" mkdir "Extracted_HDS"
        tar -xf "hdsentinel_setup.rar" -C "Extracted_HDS"
        
        if exist "Extracted_HDS\hdsentinel_setup.exe" ( 
            start "" "Extracted_HDS\hdsentinel_setup.exe" 
            cd /d "%~dp0"
            exit /b 
        )
        if exist "Extracted_HDS\hdsentinel_setup\hdsentinel_setup.exe" ( 
            start "" "Extracted_HDS\hdsentinel_setup\hdsentinel_setup.exe" 
            cd /d "%~dp0"
            exit /b 
        )
        echo [X] Error: Could not find setup executable inside extracted RAR!
    ) else (
        echo [X] Error: hdsentinel_setup.zip/.rar not found!
    )
    pause
)
cd /d "%~dp0"
exit /b

:RunMemTest
cls
echo [!] Preparing MemTest86 Flashing Utility...
cd /d "%~dp0\Storage & RAM\RAM\memtest86" 2>nul

if exist "Extracted_MemTest\imageUSB.exe" (
    start "" "Extracted_MemTest\imageUSB.exe"
    echo.
    echo [INFO] Run imageUSB to flash the tool onto your USB drive, then reboot to test!
    pause
    cd /d "%~dp0"
    exit /b
)

if exist "memtest86-usb.zip" (
    echo [!] Extracting MemTest86 via PowerShell...
    if not exist "Extracted_MemTest" mkdir "Extracted_MemTest"
    powershell -Command "Expand-Archive -Path 'memtest86-usb.zip' -DestinationPath 'Extracted_MemTest' -Force"
    
    if exist "Extracted_MemTest\imageUSB.exe" (
        start "" "Extracted_MemTest\imageUSB.exe"
        echo.
        echo [INFO] Run imageUSB to flash the tool onto your USB drive, then reboot to test!
    ) else (
        echo [X] Error: imageUSB.exe not found inside the zip!
    )
    pause
) else (
    echo [X] Error: memtest86-usb.zip not found!
    pause
)
cd /d "%~dp0"
exit /b

:RunWiFi
cls
echo [!] Preparing WirelessNetView...
cd /d "%~dp0\Network & Wi-Fi Diagnostics\WirelessNetView" 2>nul

if exist "Extracted_WiFi\WirelessNetView.exe" (
    start "" "Extracted_WiFi\WirelessNetView.exe"
    cd /d "%~dp0"
    exit /b
)

if exist "wirelessnetview.zip" (
    echo [!] Extracting WirelessNetView via PowerShell...
    if not exist "Extracted_WiFi" mkdir "Extracted_WiFi"
    powershell -Command "Expand-Archive -Path 'wirelessnetview.zip' -DestinationPath 'Extracted_WiFi' -Force"
    
    if exist "Extracted_WiFi\WirelessNetView.exe" (
        start "" "Extracted_WiFi\WirelessNetView.exe"
        cd /d "%~dp0"
        exit /b
    ) else (
        echo [X] Error: WirelessNetView.exe not found inside the zip!
    )
    pause
) else (
    echo [X] Error: wirelessnetview.zip not found!
    pause
)
cd /d "%~dp0"
exit /b

:RunKeyboardTest
cls
echo [!] Launching Keyboard Test Utility...
cd /d "%~dp0\Peripherals\keyboard-test" 2>nul
if exist "keyboardtestutility.exe" (
    start "" "keyboardtestutility.exe"
    cd /d "%~dp0"
    exit /b
) else (
    echo [X] Error: keyboardtestutility.exe not found in 'Peripherals\keyboard-test\'!
    pause
)
cd /d "%~dp0"
exit /b

:RunHWMonitor
cls
echo Extracting and Launching HWMonitor Hardware Tracker...

cd /d "%~dp0\Battery & Power\hwmonitor" 2>nul

if exist "Extracted_HWMonitor\hwmonitor_x64.exe" (
    cd "Extracted_HWMonitor"
    if "%PROCESSOR_ARCHITECTURE%"=="AMD64" ( start "" "hwmonitor_x64.exe" ) else ( start "" "hwmonitor_x32.exe" )
    cd /d "%~dp0"
    exit /b
)

set "hw_found="
for %%f in (*hwmonitor*.zip) do (
    set "hw_found=1"
    if not exist "Extracted_HWMonitor" mkdir "Extracted_HWMonitor"
    powershell -Command "Expand-Archive -Path '%%f' -DestinationPath 'Extracted_HWMonitor' -Force"
    
    if exist "Extracted_HWMonitor\hwmonitor_x64.exe" (
        cd "Extracted_HWMonitor"
        if "%PROCESSOR_ARCHITECTURE%"=="AMD64" ( start "" "hwmonitor_x64.exe" ) else ( start "" "hwmonitor_x32.exe" )
        cd /d "%~dp0"
        exit /b
    )
    echo Error: HWMonitor executable could not be targeted inside the ZIP!
    pause
)

if not defined hw_found (
    echo Error: HWMonitor ZIP archive not found in 'Battery & Power\hwmonitor\'!
    pause
)

cd /d "%~dp0"
exit /b

:RunBatteryReport
cls
color 0A
echo [!] Generating Detailed Laptop Battery Report...

if not exist "%~dp0\Battery & Power" mkdir "%~dp0\Battery & Power" 2>nul

powercfg /batteryreport /output "%~dp0\Battery & Power\battery_report.html" >nul 2>&1

if exist "%~dp0\Battery & Power\battery_report.html" (
    echo.
    echo [+] Battery Report generated successfully!
    echo [!] Opening 'battery_report.html' in your default browser...
    start "" "%~dp0\Battery & Power\battery_report.html"
) else (
    echo [X] Error: Windows powercfg failed to generate the report.
    echo [!] Make sure you are testing on a laptop with a functional battery pack.
)
pause
cd /d "%~dp0"
exit /b

:VISIT_GITHUB
cls
echo [!] Opening GitHub Repository in your browser...
start "" "https://github.com/crypt1cx01/PC-Testing-Toolkit"
goto MAIN_MENU
