# 🧠 MemTest86 - Advanced RAM Hardware Diagnostics

This directory contains instructions and resources to run **MemTest86**, the industry-standard tool for deep, independent memory stress-testing outside the Windows environment.

## 📋 Prerequisites
1. An empty USB flash drive (All data on it will be wiped).
2. Download the free tool from the official website: [MemTest86 Local File](https://github.com/crypt1cx01/PC-Testing-Toolkit/tree/main/Storage%20%26%20RAM/RAM/memtest86) *(Choose the **Free Edition**)*.

---

## 🛠️ Step-by-Step Operation Guide

### Step 1: Flashing the Tool onto the USB Drive
1. Extract the downloaded ZIP file on your computer.
2. Connect your empty USB flash drive to the PC.
3. Open the **`imageUSB.exe`** application included inside the extracted folder.
4. Select your USB flash drive from the top list.
5. Click the **Write** button and wait for the process to complete. Your USB is now a self-bootable diagnostic tool.

### Step 2: Booting from the USB Drive
1. Restart the computer you want to test.
2. As soon as the motherboard/laptop logo appears on the screen, repeatedly press your system's **Boot Menu Key** *(Common keys are **F12, F11, F8, or F9** depending on your motherboard brand)*.
3. Select your **USB Flash Drive** from the boot list to launch the MemTest86 interface.

### Step 3: Running the Test
1. Once the interface opens, the test will begin automatically after a 10-second countdown, or you can press **(T)** to *Start Test* immediately.
2. The utility will run **4 complete test loops (Passes)**, writing and reading complex data onto the RAM blocks to ensure maximum hardware integrity.
3. ⏱️ **Note:** The test takes a long time (from 1 to several hours depending on your RAM capacity and speed). Do not interrupt it.

---

## 📊 How to Read the Results

* **🟢 Green Color (PASS):** If the test completes with a green **"Pass"** status and the counter shows **Errors: 0**, your RAM is 100% healthy, stable, and free of physical defects.
* **🔴 Red Color (FAIL):** If any **bright red rows** appear on the screen or the **Errors** counter goes above **0**, your RAM chip is physically corrupted or defective. This hardware fault is the root cause of system freezes and Blue Screens of Death (BSOD), and the RAM stick must be replaced immediately.
