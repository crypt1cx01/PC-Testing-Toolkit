# 🧠 CPU-Z - Hardware Information & Verification

**CPU-Z** is a lightweight, industry-standard tool designed to gather deep hardware information on some of the main devices of your system. It is one of the most critical tools in this toolkit for anti-scam verification.

---

## 🛠️ System Requirements
* **OS:** Windows 7, 8, 10, 11 (32/64-bit).
* **Permissions:** Standard users can run it, but **Administrator** privileges are recommended to detect full motherboard and RAM SPD profiles.
* **Internet:** Not required (completely offline).

---

## 🚀 Key Features & Tabs
* **CPU Tab:** Displays exact processor name, codename, package (socket type), technology node (nanometers), core voltage, and real-time clock multipliers.
* **Mainboard Tab:** Shows motherboard manufacturer, model, chipset/southbridge model, and current BIOS version/date.
* **Memory Tab:** Displays active RAM type (DDR4/DDR5), size, operating frequency, and channel configuration (Dual/Quad).
* **SPD Tab:** Reads individual RAM stick specifications, including manufacturer (e.g., Samsung, Kingston) and XMP profiles.

---

## 💻 Usage & Anti-Scam Verification (Crucial for Buyers)

1. **Extract and Run:** Unzip the `cpu-z_2.20.1-en.zip` file and launch the appropriate `.exe` for your system configuration.
2. **Detecting Engineering Samples (ES):** Look closely at the **Specification** field on the CPU tab. If the string contains "ES" or doesn't match the retail commercial name, it is a non-retail test chip that shouldn't be sold commercially.
3. **Verifying Real Specs:** Always cross-reference the **Name** field with the **Specification** field. Scammers can alter the Windows registry to fake properties, but CPU-Z reads the internal processor hardware ID directly.
4. **RAM Validation:** Use the **SPD** tab to verify if the RAM module matches the advertised brand and speed, preventing instances of cheap modules masquerading as high-end memory.

---

## ⚠️ Warnings & Safety
* **Benchmark Stability:** CPU-Z has a built-in "Bench" tab. While its stress test is safe, do not rely on it as a definitive stability test for high overclocks (use AIDA64 or Cinebench instead).
* **Sensor Lock:** Rarely, running CPU-Z simultaneously with other heavy diagnostic tools (like AIDA64) might cause sensor reading conflicts. Open them one at a time if you notice missing data.
