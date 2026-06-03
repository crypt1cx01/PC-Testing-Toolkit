# 🔌 Peripherals & Port Validation

This directory provides web-based and offline tools to thoroughly inspect input/output devices, external ports, and integrated components like webcams and speakers.

## 🛠️ Included Tools & Web Tools

### 1. Keyboard Test Utility (100% Free & Offline)
* **Local Folder:** [Keyboard Test Tool & Files](https://github.com)
* **Usage:** Run the portable `.exe` file. It displays a virtual keyboard on your screen. Press every key on your physical keyboard; keys that register correctly will light up on the screen and stay highlighted, helping you catch missed clicks, double clicks, or completely dead keys instantly without internet access.

### 2. Keyboard, Mouse & Gamepad Tester (All-in-One Web Utility)
* **Web Link:** [Web App Link](https://keyboard-mouse-tester-web-app.vercel.app/)
* **Usage:** A modern, comprehensive tool to validate peripheral responses:
  * **Keyboard:** Press keys to light them up and lock them on screen to easily spot dead or double-clicking keys.
  * **Mouse:** Move and click inside the dedicated card to test Left/Right clicks, Scroll Wheel speed, Double-Click bugs, and tracking movement coordinates (`dx, dy`).
  * **Gamepad:** Plug in any controller and press buttons to verify layout recognition and analog stick drifting.

### 3. Webcam & Microphone Test
* **Web Link:** [Webcam Mic Test](https://webcamtests.com)
* **Usage:** Safe browser-based tool to check if the integrated camera works, verifies its maximum resolution/FPS, and records a quick audio clip to test microphone clarity.

### 4. Audio & Speaker Frequency Test
* **Web Link:** [Audio Check](https://audiocheck.net)
* **Usage:** Plays specific audio frequencies to test left/right stereo separation and check if the laptop speakers blow out or crackle at high volumes.

---

## ⚠️ Important Precautions & Warnings (Crucial for Users)
* **Ghost Clicking Check:** When you open any keyboard tester, **do not press anything for 10 seconds first**. If any key lights up green on its own, this keyboard suffers from "Ghost Clicking" (typing automatically), meaning it is damaged or water-damaged.
* **Disconnect External Devices:** Before testing an integrated laptop keyboard or touchpad, unplug any external USB mice/keyboards to prevent signal interference and false inputs.
* **Test Every Single USB Port:** Do not rely on testing just one port. Use a known-working USB flash drive and plug it into **every USB port** on the chassis to ensure they all transfer data and supply proper power.
* **Audio Caution:** Lower your system speaker volume to **50%** before running frequency or high-pitch sound tests to prevent damaging the speakers or your hearing.

## 💡 Peripherals Checklist for Buyers (Step-by-Step)
1. **The Keyboard Ghosting Test:** Press 3 to 4 keys simultaneously (like W, A, S, D). Ensure they all register together, which is crucial for gaming.
2. **Gamepad / Controller Drift:** When testing a Gamepad on the web app, let go of the analog sticks. Check the coordinates; if the values fluctuate or don't return to absolute zero (`0.0`), the controller suffers from **stick drift**.
3. **Touchpad Gestures:** Test multi-touch capabilities (two-finger scroll, three-finger window swipe) to ensure the touchpad drivers and hardware are fully functional.
4. **HDMI & Display Outputs:** Connect the laptop/PC to an external monitor if possible. A faulty HDMI chip or port might display static or fail to output video entirely.
5. **Headphone Jack (Aux):** Plug in a wired headphone. Rotate the jack slowly inside the port while audio plays; if you hear crackling or the sound cuts out, the port is loose or dirty.
