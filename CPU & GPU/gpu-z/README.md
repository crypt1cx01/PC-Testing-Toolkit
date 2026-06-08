# 🎮 GPU-Z - Graphics Card Information & Anti-Fake Verification

**GPU-Z** is a lightweight, industry-standard system utility designed to provide all available information about your video card and graphics processor (GPU). It is an essential tool in this toolkit to prevent GPU-related scams.

---

## 🛠️ System Requirements
* **OS:** Windows 7, 8, 10, 11 (32/64-bit).
* **Permissions:** Standard execution, but running as **Administrator** ensures accurate readings for power draw and advanced BIOS details.
* **Internet:** Not required (works completely offline).

---

## 🚀 Key Features & Tabs
* **Graphics Card Tab:** Displays exact GPU model, codename, release date, transistors, interface (PCI-Express speed), shaders count, and memory type/size.
* **Sensors Tab:** Tracks real-time GPU core clock, memory clock, temperature, fan speed, memory usage (VRAM), and power consumption.
* **Advanced Tab:** Shows detailed API support info (DirectX, Vulkan, OpenCL) and deeper hardware specs like ASIC quality or detailed BIOS configurations.

---

## 💻 Usage & Anti-Scam Verification (Crucial for Buyers)

1. **Launch:** Run the `GPU-Z.2.69.0.exe` executable file.
2. **The "Fake" GPU Check:** Look closely at the GPU name field and the official logo area. If GPU-Z detects a modified BIOS (e.g., an old GTS 450 reprogrammed to look like a GTX 1050 Ti), it will display **"[FAKE]"** right before the card's name and replace the brand logo with a warning shield.
3. **Verify Memory Type & Bus Width:** Counterfeit cards often use older, slower memory types (like DDR3 instead of GDDR5/GDDR6) or narrow Bus Widths (e.g., 64-bit instead of 128-bit). Cross-reference these fields with official manufacturer specifications.
4. **Interface Check:** Ensure the card is running at its proper PCIe bandwidth (e.g., `PCIe x16 4.0`). Click the **"?"** button next to the Bus Interface field to run a small render test to wake up the card from power-saving mode and read the true full speed.

---

## ⚠️ Warnings & Safety
* **Load Spike:** Clicking the Bus Interface render test (`?` icon) will briefly put a 100% load on the GPU. Do not run it simultaneously with FurMark or other stress tests.
* **Sensor Monitoring:** Keep the **Sensors** tab running in the background while performing a quick stress test to check if the fans spin up correctly or if the card throttles due to high temperatures.
