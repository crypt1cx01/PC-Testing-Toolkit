# 🔋 Battery & Power Diagnostics

This directory focuses on checking the power efficiency, health status, and degradation of laptop batteries.

## 🛠️ Included Tools & Commands

### 1. Windows Battery Report
* **How to run:** 
  1. Open Command Prompt (CMD) as Administrator.
  2. Type or paste the following command:
     ```cmd
     powercfg -energy
     --- OR ----
     powercfg /batteryreport
     ```
  3. For Windows 7
     ```cmd
     powercfg /energy
     ```
  4. Press Enter. It will generate an HTML file. Open it to compare **Design Capacity** vs. **Full Charge Capacity**.

### 2. HWMonitor
* **Download:** [HWMonitor Official](https://cpuid.com)
* **Usage:** Run the portable version to monitor real-time temperatures, voltage usage, and the precise battery wear level percentage.
* 
### 3. AIDA64 (System Stability Test)
* **Download:** [AIDA64 Download](https://www.aida64.com/downloads)
* **Usage:** 
  1. Open AIDA64 and go to **Tools** > **System Stability Test**.
  2. Check the boxes for **Stress CPU**, **Stress FPU**, **Stress cache**, and **Stress system memory**.
  3. Click **Start** to begin the heavy workload test.
  4. **Why use it here?** It monitors how the battery and power delivery system (VRM) handle maximum power draw under full synthetic load, helping you detect sudden shutdowns, voltage drops, or thermal throttling.
