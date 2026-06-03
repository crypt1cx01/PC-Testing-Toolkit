# 🧠 CPU & GPU Diagnostics & Stress Testing

This directory validates hardware specifications and pushes the components to their limits to ensure system stability under heavy workloads.

## 🛠️ Included Tools

### 1. CPU-Z
* **Local Folder:** [CPU-Z Tool & Files](https://github.com/crypt1cx01/PC-Testing-Toolkit/tree/main/CPU%20%26%20GPU/cpu-z)
* **Usage:** Run the portable `.exe` file to verify exact processor models, motherboard chipsets, and RAM timings to prevent counterfeit component scams.

### 2. GPU-Z
* **Local Folder:** [GPU-Z Tool & Files](https://github.com/crypt1cx01/PC-Testing-Toolkit/tree/main/CPU%20%26%20GPU/gpu-z)
* **Usage:** Evaluates graphics card details. Make sure the "Fake" flag does not appear next to the GPU name.

### 3. AIDA64 Extreme (System Stability Test)
* **Local Folder:** [AIDA64 Tool & Files](https://github.com/crypt1cx01/PC-Testing-Toolkit/tree/main/CPU%20%26%20GPU/AIDA64)
* **Usage:** Open AIDA64, go to `Tools` -> `System Stability Test`. Check all boxes and click `Start` to stress test the entire system for 5–10 minutes while monitoring temperatures.

### 4. FurMark
* **Local Folder:** [FurMark Tool & Files](https://github.com/crypt1cx01/PC-Testing-Toolkit/tree/main/CPU%20%26%20GPU/FurMark)
* **Usage:** Heavy GPU stress test to push graphics card power limits and detect thermal throttling or artifacts.

### 5. Cinebench
* **Local Folder:** [Cinebench Tool & Files](https://github.com/crypt1cx01/PC-Testing-Toolkit/tree/main/CPU%20%26%20GPU/Cinebench)
* **Usage:** CPU rendering benchmark to evaluate raw multicore/single-core processing performance.

---

## ⚠️ Safe Testing Guidelines (Crucial for Users)
Stress testing generates extreme heat. Follow these rules to avoid hardware damage:
* **Monitor Temperatures:** Keep HWMonitor or AIDA64 open during tests. 
* **Thermal Thresholds:** Stop the test immediately if CPU or GPU temperatures exceed **90°C–95°C**.
* **Test Duration:** 
  * For quick verification: **10 to 15 minutes** is enough.
  * For overclocks or deep stability: **30 minutes**. Avoid running FurMark for hours on laptop GPUs.
* **Stop Signals:** If you see visual artifacts (lines, flashing dots) or experience a sudden blue screen (BSOD), stop the test. It indicates unstable hardware, bad thermal paste, or power supply issues.

## 💡 Quick Checklist for Buyers (Anti-Scam)
1. **Match Specifications:** Compare CPU-Z name fields with Windows Device Manager.
2. **Check Specifications:** Ensure the "Specification" string in CPU-Z matches the official retail name, not an "ES" (Engineering Sample) chip.
3. **Validate GPU Memory:** Check GPU-Z to ensure Memory Type (e.g., GDDR6) and Bus Width match official vendor specs.
