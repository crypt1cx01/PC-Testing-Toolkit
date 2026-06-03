# 💾 Storage & RAM Diagnostic Suite

This directory contains powerful utilities to verify the health, lifespan, and speed of your storage drives (SSD/HDD) and system memory (RAM).

## 🛠️ Included Tools & Operation Steps

### 1. CrystalDiskInfo
* **Local Folder:** [CrystalDiskInfo Tool & Files](https://github.com)
* **How to Run:**
  1. Open the folder and run `DiskInfo64.exe` (or `DiskInfo32.exe` for older systems) as Administrator.
  2. The application will instantly load all connected drives.
  3. Look at the **Health Status** color indicator (Green = Good, Yellow = Caution, Red = Bad) and read the temperature.

### 2. CrystalDiskMark
* **Local Folder:** [CrystalDiskMark Tool & Files](https://github.com)
* **How to Run:**
  1. Open the folder and run `DiskMark64.exe` as Administrator.
  2. Select the target drive letter from the dropdown menu on the top right.
  3. Keep the default settings (5 tests, 1GiB size).
  4. Click the green **ALL** button to start the benchmarking process. Do not use the PC until the numbers stop changing.

### 3. Hard Disk Sentinel (HD-Sentinel)
* **Local Folder:** [HD-Sentinel Tool & Files](https://github.com)
* **How to Run:**
  1. Launch the application from its executable file.
  2. Select your drive from the left sidebar panel.
  3. Read the detailed **Overview** tab text box. It translates raw data into simple human words, explicitly detailing if the drive has communication issues or surface errors.

### 4. Windows Memory Diagnostic (Built-in Quick RAM Test)
* **How to Run:**
  1. Press `Windows Key + R` to open the Run dialog box.
  2. Type `mdsched.exe` and press Enter.
  3. Choose **"Restart now and check for problems (recommended)"**.
  4. The PC will restart into a blue diagnostic screen and start testing your RAM automatically.

### 5. MemTest86+ (Advanced RAM Bootable Tester)
* **Local Folder:** [MemTest86 Tool & Files](https://github.com)
* **How to Run:**
  1. Plug in an empty USB flash drive (all data on it will be wiped).
  2. Run the included USB installer tool and follow the steps to make the USB bootable.
  3. Restart the PC, press your motherboard's boot menu key (e.g., F12, F11, or F8), and select the USB drive.
  4. MemTest86+ will boot automatically and start testing. Let it complete at least **1 full pass**.

---

## ⚠️ Important Precautions & Warnings (Crucial for Users)
* **Save Your Work First:** Before launching **Windows Memory Diagnostic**, close all open documents and save your work because the tool forces an immediate PC reboot.
* **Benchmark Battery Drain:** Never run **CrystalDiskMark** on a laptop running on battery power. The laptop's power-saving modes will artificially choke the drive's speeds, giving inaccurate, low performance metrics.
* **Stop on Red/Error:** If MemTest86+ immediately floods the screen with **bright red rows of errors**, you can stop the test early. Your RAM is physically corrupted. There is no need to wait hours for the test to complete.
* **Thermal Watch during Speed Test:** Keep CrystalDiskInfo open while running CrystalDiskMark. NVMe SSDs can heat up rapidly during intense speed tests; if the drive exceeds **75°C**, cancel the test to prevent heat damage.

## 💡 Buyer's Evaluation Checklist (Step-by-Step)
1. **The "Health %" Reset Scam:** Be careful. Sophisticated scammers can use hardware tools to clear S.M.A.R.T data, making an old, dying SSD look like it has "100% Health". To spot this, compare the **Total Host Writes (GB)** against the **Power-on Hours**. If the drive has 0 hours but tens of thousands of GBs written, the health percentage has been tampered with.
2. **Bad Sectors Count:** In HD-Sentinel, if you see any mention of "Reallocated Sectors" or "Bad Sectors", the drive is actively dying and could fail at any moment. Do not buy or store important data on it.
3. **Finding Windows RAM Test Results:** After the Windows Memory Diagnostic finishes, the PC will boot back into Windows. To see the results: Open *Event Viewer* -> Go to *Windows Logs* -> *System* -> Click *Find* on the right panel and type `MemoryDiagnostics-Results`. If it shows any errors, your RAM stick is faulty.
4. **Deep RAM Blue Screens:** If Windows frequently gives errors like `MEMORY_MANAGEMENT` or `PAGE_FAULT_IN_NONPAGED_AREA`, and the built-in Windows tool misses it, run MemTest86+ overnight. Any single red line found means a RAM stick is physically corrupted and must be replaced.
