# 🔥 FurMark - GPU Stress Test & Thermal Benchmarking

**FurMark** is an intensive GPU stress test utility based on OpenGL rendering algorithms. It is specifically designed to push your graphics card to its absolute limits to test stability, power delivery, and thermal efficiency.

---

## 🛠️ System Requirements
* **OS:** Windows 7, 8, 10, 11 (64-bit recommended).
* **Permissions:** Requires **Administrator** privileges to correctly monitor GPU sensors.
* **DirectX/OpenGL:** Requires stable graphics drivers supporting OpenGL 2.0 or higher.

---

## 🚀 Key Features
* **GPU Stress Testing:** Pushes the GPU core, VRMs, and cooling solution to maximum heat output.
* **Artifact Scanner:** Visually highlights rendering errors that occur when a GPU is failing or unstable.
* **Built-in Monitoring:** Provides live on-screen graphs tracking GPU temperature, core clocks, and fan speeds.
* **Presets:** Includes quick benchmarking profiles for 720p, 1080p, 1440p, and 4K resolutions.

---

## 💻 Usage & Verification Guide

1. **Launch:** Open the executable file.
2. **Setup:** Select your monitor's native resolution from the dropdown menu. 
3. **Configuration:** For a standard stability test, leave **Anti-Aliasing (AA)** turned `Off` (disabling AA maximizes power draw and heat generation).
4. **Execution:** Click the **"GPU stress test"** button. A warning screen will appear; click `GO!` to start.
5. **Observation:** Let the donut render for **10 to 15 minutes**. Watch the temperature curve closely. It should flatten out and stabilize rather than continuously climb.

---

## ⚠️ Safe Testing Guidelines (Crucial - Read Before Use)

* **Extreme Heat:** FurMark generates more heat than almost any commercial video game. Never leave the test running unattended.
* **Thermal Threshold:** If the GPU temperature surpasses **90°C–95°C**, click `ESC` or close the window immediately to prevent hardware damage or premature degradation.
* **Hardware Warning Signs:** Stop the test immediately if you encounter any of the following:
  * **Artifacts:** Flashing lines, dots, or color blocks on the screen (indicates failing VRAM or unstable core).
  * **Black Screen / TDR:** The screen turns black and resets (indicates driver crash due to over-temperature or power failure).
  * **PC Shut Down:** If the PC instantly powers off, your power supply unit (PSU) cannot handle the power draw or has triggered its OCP/OVP protections.
* **Laptop Warning:** Use extreme caution on gaming laptops. Laptop cooling solutions are rarely built to handle extended FurMark loops. Limit tests to **3–5 minutes max**.
