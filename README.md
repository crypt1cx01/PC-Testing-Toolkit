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
