# 💻 PC-Testing-Toolkit

The ultimate, comprehensive toolkit and guide to testing and inspecting new or used desktop PCs, laptops, and monitors before purchasing. Avoid hardware scams and detect hidden defects instantly.

---

## 🚀 About The Project

**PC-Testing-Toolkit** is an organized, portable repository that consolidates all essential diagnostic tools, scripts, and media files required to analyze hardware health. All integrated tools are lightweight and can be executed directly from a USB flash drive without requiring an internet connection during inspection.

---

## 🛠️ Toolkit Structure & Directory Overview

The repository is logically structured into specialized folders to ensure quick navigation during time-sensitive hardware inspections:

### 1. 🧠 CPU & Motherboard Specification | `cpu-z`
* **Core Tool:** CPU-Z
* **Function:** Validates the exact architecture, model, and clock speeds of the CPU, Motherboard, and RAM configuration to prevent spoofed hardware specs.

### 2. 💽 Storage Device Health | `Check HArd`
* **Core Tool:** Storage diagnostics (e.g., CrystalDiskInfo / CrystalDiskMark)
* **Function:** Reads the S.M.A.R.T. health status, total power-on hours (device age), and measures read/write transfer rates of HDDs and SSDs.

### 3. 💾 Memory Stability | `Ram`
* **Core Tool:** RAM stress testers (e.g., MemTest86 binaries / native scripts)
* **Function:** Subjects the volatile memory to rigorous write/read patterns to diagnose data corruption, system instability, and Blue Screen of Death (BSOD) triggers.

### 4. 🖥️ Display & Pixel Diagnostics | `Undead_Pixels`
* **Core Tool:** Undead Pixels
* **Function:** A portable utility that cycles solid primary colors across the panel to isolate dead pixels, stuck pixels, or backlight bleeding.

### 5. 🔋 Power & Battery Degradation | `Scann battery.txt`
* **Core Tool:** Embedded command script.
* **Function:** Contains the native Windows deployment script (`powercfg /batteryreport`) to generate an automated report showing factory design capacity versus current full charge capacity.

### 6. 🎬 Multimedia & GPU Stress Test | `videoplayback.mp4`
* **Core Tool:** High-bitrate, high-resolution test video.
* **Function:** Acts as a rapid hardware-accelerated playback benchmark to verify GPU decoding stability, integrated audio frequency range, and screen refresh fluidity under load.

---

## ⚙️ Quick Start Guide

1. Clone or download this repository by clicking the green **Code** button above and choosing **Download ZIP**.
2. Extract the file structure directly onto a portable **USB Flash Drive**.
3. Plug the USB drive into the target computer system and run the required diagnostics straight from the folders without any installation.

---

## 🤝 Contributing

This project is open-source and community-driven! To contribute new tools, scripts, or documentation enhancements:
1. **Fork** the repository.
2. Create a feature **Branch** (`git checkout -b feature/AmazingTool`).
3. Commit your modifications (`git commit -m 'Add some AmazingTool'`).
4. **Push** to the branch (`git push origin feature/AmazingTool`).
5. Open a **Pull Request**.
