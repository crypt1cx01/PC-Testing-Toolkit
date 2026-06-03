# 🖥️ Display & Monitor Diagnostics

Tools and links to check panel imperfections, screen responsiveness, and color calibration.

## 🛠️ Included Tools & Web Tools

### 1. UDPixel22
* **Local Folder:** [UDPixel22 Tool & Files](https://github.com/crypt1cx01/PC-Testing-Toolkit/tree/main/Display%20%26%20Monitor/UDPixel22)
* **Usage:** A desktop tool designed to locate and fix stuck pixels by rapidly cycling colors on targeted areas of the screen.

### 2. Dead Pixel Buddy
* **Web Link:** [Dead Pixel Buddy Website](https://deadpixelbuddy.com)
* **Usage:** Cycle through fullscreen solid colors (Red, Green, Blue, Black, White) to detect dead or stuck pixels.

### 3. EIZO Monitor Test
* **Web Link:** [EIZO Test Website](https://www.eizo.be/monitor-test/)
* **Usage:** A comprehensive web-based platform to test panel convergence, gradients, and viewing angles.

### 4. TestUFO
* **Web Link:** [TestUFO Website](https://testufo.com)
* **Usage:** Verifies screen refresh rate (Hz) and ghosting artifacts/response time.

---

## ⚠️ Important Precautions & Warnings (Crucial for Users)
* **Clean the Screen First:** Always wipe the monitor with a microfiber cloth before testing. Dust particles frequently look exactly like dead pixels, leading to false diagnoses.
* **Epilepsy Warning:** Tools like **UDPixel22** fix stuck pixels by flashing colors rapidly. **Do not stare directly at the flashing area** if you are sensitive to flashing lights or have photosensitive epilepsy.
* **Run UDPixel with Caution:** Leave the pixel-fixer running for **15–30 minutes**. Do not leave it flashing on the same spot for hours unattended, as extreme flashing on low-quality panels can cause minor temporary image retention.

## 💡 Screen Inspection Guide (Step-by-Step Checklist)
1. **Set Native Resolution & Refresh Rate:** Before opening TestUFO, ensure Windows is set to the monitor's maximum supported Refresh Rate (Hz) in *Display Settings*.
2. **Dead vs. Stuck Pixels:** 
   * **Dead Pixel:** Completely black/dead. Usually cannot be fixed.
   * **Stuck Pixel:** Constantly lit as Red, Green, or Blue. You can try fixing this by running the **UDPixel22** color cycles on that specific area.
3. **Backlight Bleeding Test:** Turn off the lights in your room, display a completely black screen, and look at the edges. Minor glowing is normal for IPS panels, but bright, concentrated yellow/white bleeding from the edges indicates a flawed or damaged panel structure.
4. **Ghosting & Response Time:** Watch the UFOs closely on TestUFO. If you see a heavy, blurry trail (ghost) behind the moving UFO, the monitor has a slow response time, which causes motion blur in fast-paced games.
