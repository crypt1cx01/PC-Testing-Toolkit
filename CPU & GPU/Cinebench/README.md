# 🎬 Cinebench - CPU Rendering & Performance Benchmark

**Cinebench** is a real-world, cross-platform test suite that evaluates your computer's hardware capabilities. It provides a highly accurate evaluation of your processor's (CPU) raw rendering performance using advanced ray-tracing and calculation algorithms.

---

## 🛠️ System Requirements
* **OS:** Windows 10, 11 (64-bit).
* **Permissions:** Standard execution, but running as **Administrator** ensures background processes do not interfere with score accuracy.
* **RAM:** Minimum 4 GB of available system memory.

---

## 🚀 Key Features & Test Modes
* **Multi-Core Test:** Stresses all available CPU cores and threads to measure peak processing power for heavy multitasking and rendering.
* **Single-Core Test:** Evaluates the execution speed of a single processor core, which is critical for gaming and everyday snappy system performance.
* **Thermal Throttling Evaluation:** Sustains continuous rendering load to check if the CPU drops clocks or overheats over time.
* **Global Ranking:** Provides an points-based score to compare your CPU directly against other industry-standard processors.

---

## 💻 Usage & Verification Guide

1. **Extract & Open:** Unzip the `CINEBENCH R23.zip` file entirely before executing the application.
2. **Launch:** Run the `Cinebench.exe` file.
3. **Advanced Benchmark:** Go to `File` -> Check **Advanced Benchmark** to unlock the minimum test duration options.
4. **Run Multi-Core:** Click **Run** next to `CPU (Multi Core)`. The tool will begin rendering a complex 3D photorealistic scene.
5. **Analyze Result:** Once finished, your final performance score will be displayed in the left ranking panel.

---

## ⚠️ Safe Testing & Guidelines (Crucial for Users)

* **Background Activity:** Close all web browsers, music, and background games before clicking run. Any active app will steal processing power and lower your benchmark score.
* **Temperature Monitoring:** Keep HWMonitor or AIDA64 active in the background. Cinebench will heat up your CPU very quickly to its maximum thermal limits.
* **The 10-Minute Loop:** For basic performance checking, a single pass is enough. However, to test absolute hardware stability and thermal soaking, set the **Minimum Test Duration** to `10 minutes`.
* **Stability Drops:** If your score drops dramatically on consecutive runs, your CPU is experiencing **Thermal Throttling**, meaning your thermal paste or CPU cooler is failing to keep up.
