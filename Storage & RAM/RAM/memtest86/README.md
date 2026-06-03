# 🧠 MemTest86 - Advanced RAM Hardware Diagnostics

This directory contains resources and operational guidelines to run **MemTest86**, the industry-standard tool for deep memory testing outside the Windows environment.

## 📋 Prerequisites
1. An empty USB flash drive (All data on it will be wiped).
2. Local Package: Use the included **[memtest86-usb.zip](./memtest86-usb.zip)** archive file.

---

## 🛠️ Step-by-Step Operation Guide

### Step 1: Flashing the USB Drive
1. Extract the contents of **[memtest86-usb.zip](./memtest86-usb.zip)**.
2. Connect your empty USB flash drive to the PC.
3. Open **`imageUSB.exe`** from the extracted folder as Administrator.
4. Select your target USB drive from the top checkbox list.
5. Click the **Write** button and wait for the success notification. Your bootable toolkit is ready.

### Step 2: Booting from the USB
1. Restart the computer you want to test.
2. As soon as the motherboard logo appears, repeatedly press your system's **Boot Menu Key** *(Common keys: **F12, F11, F8, or F9** depending on your motherboard brand)*.
3. Select your **USB Flash Drive** from the boot list to launch the MemTest86 blue interface.

### Step 3: Running the Test
1. Once open, the test begins automatically after 10 seconds, or press **(T)** to *Start Test* immediately.
2. The utility will execute **4 complete test loops (Passes)**, writing complex data into the RAM cells.
3. ⏱️ **Note:** This takes a long time (from 1 to several hours depending on RAM capacity and speed).

---

## ⚠️ Important Precautions & Warnings (Crucial for Users)
* **Wipe Warning:** `imageUSB.exe` completely formats the USB drive. Double-check that you selected the correct USB drive letter to avoid accidentally wiping external backup hard drives.
* **Instant Termination on Error:** If the bottom screen floods with **bright red rows of errors**, your RAM is physically faulty. **Press `Esc` to stop the test immediately**—there is no need to wait hours for it to finish.
* **Isolate Faulty Sticks:** If you have multiple RAM sticks and the test fails, power off the PC, remove one stick, and test them **one by one** to find exactly which stick is broken.
* **Disable Overclocks:** Active XMP/EXPO overclock profiles can cause false positives. If the test fails, disable XMP in the BIOS, revert RAM to factory stock speeds (`2133MHz` / `2666MHz`), and re-test.

---

## 📊 Understanding the Results

* **🟢 Green Color (PASS):** If the test finishes 4 passes with **Errors: 0**, your RAM hardware is perfectly healthy. Any system stability issues you face are caused by Windows drivers or software.
* **🔴 Red Color (FAIL):** Any error count above **0** indicates physical RAM corruption. This defect is the main cause of random PC crashes and Blue Screens of Death (BSOD), meaning the faulty RAM stick must be replaced immediately.
