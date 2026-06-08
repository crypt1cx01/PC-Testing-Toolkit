# 🖥️ AIDA64 Extreme - System Diagnostics & Stability Test

**AIDA64 Extreme** is an industry-leading system information tool and diagnostics utility. In this toolkit, it serves as the ultimate all-in-one suite to stress-test your system stability (CPU, FPU, Cache, and System Memory) and monitor real-time thermal throttling behavior.

---

## 🛠️ System Requirements
* **OS:** Windows 7, 8, 10, 11 (32/64-bit).
* **Permissions:** **Must run as Administrator** to deploy the kernel driver required for low-level hardware access and sensor monitoring.
* **Dependencies:** Install `VC_redist.x64.exe` located in the same directory if you experience any runtime initialization errors.

---

## 🚀 Key Features & Diagnostics
* **System Stability Test:** A powerful stress-testing module that loads the CPU, Cache, Memory, and FPU simultaneously to verify full PC stability.
* **Thermal Throttling Detection:** Visually logs if the CPU drops its clock speed due to high temperatures (marked by a bright red warning graph).
* **Comprehensive Hardware Audits:** Provides deep diagnostic information regarding the motherboard, chipset, BIOS settings, and memory sub-systems.
* **Cache & Memory Benchmark:** Built-in tool to measure read, write, copy speeds, and latency of your RAM and CPU caches.

---

## 💻 Usage & Verification Guide

1. **Extract & Prepare:** Unzip `aida64extreme830.zip` entirely before trying to launch the application.
2. **Launch:** Run `aida64.exe` as an **Administrator**.
3. **Open Stability Test:** Navigate to the top menu bar, click on **Tools**, and select **System Stability Test**.
4. **Configuration:** Check the boxes for **Stress CPU**, **Stress FPU**, **Stress Cache**, and **Stress System Memory**.
5. **Execution:** Click the **Start** button at the bottom left to begin the stress test.
6. **Observation:** Let it run for **5 to 10 minutes** for basic validation (or **30 minutes** for serious stability checking). Watch the temperature graph and ensure the text **"CPU Throttling - Max %"** stays at 0% (Green).

---

## ⚠️ Safe Testing Guidelines (Crucial for Users)

* **The FPU Factor:** Checking the **"Stress FPU"** box triggers heavy AVX/FPU instruction loads that generate immense heat. If your cooling system is weak, your CPU will instantly thermal throttle. 
* **Thermal Action:** If the temperature graph trends upwards past **90°C–95°C** or turns solid red with a *"CPU Throttling Detected!"* warning, click **Stop** immediately.
* **System Crashes:** If the PC freezes, restarts, or crashes into a Blue Screen (BSOD) during this test, it means your CPU voltage is too low, the power supply is failing, or your RAM is unstable.
