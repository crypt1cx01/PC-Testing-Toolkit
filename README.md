# 🛠️ PC-Testing-Toolkit

A comprehensive, lightweight, and production-ready diagnostic toolkit designed for hardware enthusiasts, system builders, and second-hand PC/laptop buyers. This toolkit helps validate specifications, bench performance, and detect hidden hardware defects or scams completely offline and online.

---

## 📂 Toolkit Modules & Quick Navigation


| Module Icon | Diagnostic Category | Description & Included Capabilities | Directory Link |
| :---: | :--- | :--- | :---: |
| 🔋 | **Battery & Power** | Battery health, charge capacity report, and live wear level tracking. | [📂 Explore](./Battery%20%26%20Power) |
| 🧠 | **CPU & GPU** | Component specification verification, stress testing, and thermal throttling checks. | [📂 Explore](./CPU%20%26%20GPU) |
| 🖥️ | **Display & Monitor** | Dead/stuck pixel identification, backlight bleed testing, and ghosting analysis. | [📂 Explore](./Display%20%26%20Monitor) |
| 🔌 | **Peripherals & Ports** | Keyboards, multi-touchpads, gaming mice polling rates, and external I/O port validations. | [📂 Explore](./Peripherals) |
| 💾 | **Storage & RAM** | Drive health monitoring, sequential speed benchmarks, and bootable memory diagnostics. | [📂 Explore](./Storage%20%26%20RAM) |
| 🌐 | **Network & Wi-Fi** | Local network adapter auditing, live ping stability, and connection troubleshooting. | [📂 Explore](./Network%20%26%20Wi-Fi%20Diagnostics) |

---

## 🚀 Core Featured Utilities Inside

* **Diagnostic Tools:** CPU-Z, GPU-Z, CrystalDiskInfo, Hard Disk Sentinel, WirelessNetView.
* **Stress & Benchmark Tools:** AIDA64 Extreme, FurMark, Cinebench, CrystalDiskMark.
* **Display & Peripheral Testers:** UDPixel22, Keyboard Test Utility, Web-based All-in-One Controller/Mouse tester.
* **Deep Hardware Testers:** Bootable MemTest86+ Package, Windows Memory Diagnostic.
* 
## 🛠️ Included Tools & Official Sources

To ensure safety and the latest updates, here is the list of core tools included or recommended by this toolkit, along with their official download sources:

| Category | Tool Name | Purpose | Official Source |
| :--- | :--- | :--- | :--- |
| **CPU & GPU** | CPU-Z | Hardware identification (CPU, Motherboard, RAM) | [CPUID](https://cpuid.com/softwares/cpu-z.html) |
| **CPU & GPU** | GPU-Z | Video card documentation and diagnostics | [TechPowerUp](https://www.techpowerup.com/download/gpu-z/) |
| **CPU & GPU** | FurMark | GPU stress testing and benchmarking | [FurMark](https://www.geeks3d.com/furmark/downloads/) |
| **Storage & RAM** | CrystalDiskInfo | HDD/SSD health and SMART status monitoring | [CrystalDiskInfo](https://crystalmark.info/en/software/crystaldiskinfo/) |
| **Storage & RAM** | CrystalDiskMark | Disk drive performance benchmarking | [CrystalDiskMark](https://crystalmark.info/en/software/crystaldiskmark/) |
| **Storage & RAM** | MemTest86 | Advanced memory (RAM) diagnostic tool | [MemTest86](https://www.memtest86.com/download.htm) |
| **Diagnostics** | AIDA64 | Comprehensive system information and stability test | [AIDA64](https://www.aida64.com/downloads) |
| **Diagnostics** | HWMONITOR | Hardware temperature, voltage, and fan speed monitoring | [HWMONITOR](https://cpuid.com/softwares/hwmonitor.html) |

## 📖 Usage Guide & Menu Structure

To start using the toolkit, simply right-click on **`Run-Toolkit.bat`** and select **Run as Administrator** (or just double-click it, and the script will automatically request Admin privileges). 

Once launched, you can navigate through the toolkit completely using your keyboard numbers **[0-7]**. Here is the master menu breakdown:

*   **`1` ➜ CPU and GPU Diagnostics Menu:** Quick access to processors and graphics cards identification and health tools.
*   **`2` ➜ System Stress Testing Menu:** Utilities to push your hardware to the limits and test system stability.
*   **`3` ➜ Display and Monitor Diagnostics Menu:** Tools to check for dead pixels, screen bleeding, and color accuracy.
*   **`4` ➜ Install AIDA64 Pre-requisites:** Automatically installs the required Microsoft Visual C++ Redistributable (**`VC_redist.x64.exe`**) to run AIDA64 smoothly.
*   **`5` ➜ Storage and RAM Testing Menu:** Dedicated scanners for benchmarking SSDs/HDDs and testing RAM modules for errors.
*   **`6` ➜ Network and Peripherals Menu:** Tools to check internet connection stability, keyboard, mouse, and other inputs.
*   **`7` ➜ Visit Project GitHub:** Instantly opens this official repository page in your default browser for updates.
*   **`0` ➜ Exit:** Safely closes the testing toolkit launcher.

---

## ⚠️ Global Testing Safety Guidelines (Must Read First)

Before launching heavy synthetic stress benchmarks across any directory, always implement these safety measures:
1. **Never Benchmark on Battery:** Always connect your laptop to its AC wall charger before running benchmarks like FurMark or CrystalDiskMark to prevent power-throttling and inaccurate results.
2. **Track Live Temperatures:** Keep HWMonitor or CrystalDiskInfo open in the background. If any core component (CPU, GPU, or NVMe SSD) exceeds **90°C–95°C**, stop the test immediately to prevent thermal degradation.
3. **Save Work Before RAM Testing:** Built-in tools like `mdsched.exe` will force your operating system to reboot immediately. Always save your active files and close documents first.
4. **Epilepsy Warning:** Screen fixing tools like UDPixel22 flash colors rapidly. Avoid staring directly at the flashing patterns if you are sensitive to rapid visual flashes.

---

## 💡 Quick Anti-Scam Guide for Used Hardware Buyers

* **Hardware Spoofing:** Always match the specification string displayed in **CPU-Z** and **GPU-Z** against standard retail specs. Watch out for the "Fake" flag next to graphics card entries in GPU-Z.
* **Storage S.M.A.R.T Tampering:** Scammers can wipe disk hours to mask a dying drive. Always cross-verify the **Total Host Writes (GB)** against **Power-on Hours** inside CrystalDiskInfo; high writes with low hours mean the data has been cleared.
* **Ghost Typing:** Launch the peripheral tester and leave the keyboard untouched for 10 seconds. If random keys light up automatically on the layout, the keyboard has internal liquid or hardware damage.

---

## 📜 License

This automation suite is officially licensed and distributed under the **MIT Open-Source License** - see the [LICENSE](./LICENSE) document for more details.
