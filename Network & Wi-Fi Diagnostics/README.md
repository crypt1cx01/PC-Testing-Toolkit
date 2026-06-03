# 🌐 Network & Wi-Fi Diagnostics

This directory provides tools and guidelines to test internet performance, network stability, and diagnose wireless/wired adapter hardware issues.

## 🛠️ Included Tools & Web Utilities

### 1. WirelessNetView (100% Free & Offline Tool)
* **Local Folder:** [WirelessNetView Tool & Files](https://github.com)
* **How to Run:**
  1. Open the folder and run `WirelessNetView.exe`.
  2. The tool will instantly list all surrounding Wi-Fi networks and your active connection.
  3. Look at the **Average Signal Quality** and **Channel Frequency** to evaluate how well your wireless card receives signals without needing an internet connection.

### 2. Speedtest by Ookla
* **Web Link:** [Speedtest Official Website](https://speedtest.net)
* **Usage:** Click the **"GO"** button to measure download speed, upload speed, and network latency (Ping). Essential for testing the maximum throughput of the network card.

### 3. Live Ping & Packet Loss Monitor
* **Web Link:** [Ping-CanBeUseful Tool](https://canbeuseful.com)
* **Usage:** A visual, live tool that continuously pings servers to monitor connection stability. Leave it running in the background to catch sudden drops, spikes, or packet loss.

### 4. Windows Built-in Network Resetter
* **How to run via Command Prompt (CMD):**
  1. Open CMD as Administrator.
  2. Type the following command to flush DNS and reset IP configurations:
     ```cmd
     ipconfig /flushdns && netsh winsock reset
     ```
  3. Press Enter and restart the PC to resolve generic Wi-Fi configuration locks.

---

## ⚠️ Important Precautions & Warnings (Crucial for Users)
* **Disconnect VPNs:** Always turn off any active VPN or proxy software before testing network speeds or latency. Running a test through a VPN will show inaccurate server speeds and artificially inflated ping.
* **Stop Background Downloads:** Close games, torrents, or streaming tabs on all devices in your house while testing to get an accurate reading of the network adapter's actual capability.
* **Hardware Overheating:** If your laptop Wi-Fi keeps disconnecting every few minutes under heavy downloads but works fine normally, the wireless card (usually Mediatek/Intel chips) might be overheating or loose.

## 💡 Network Evaluation Checklist for Buyers (Step-by-Step)
1. **The Wi-Fi Distance Test:** Move 5 to 10 meters away from the router or go to another room. Open the Live Ping monitor or WirelessNetView and watch for spikes. A high-quality Wi-Fi card should maintain a stable ping and high signal percentage even through walls.
2. **Checking Max Supported Link Speed:** 
   * Press `Win + X` and open **Device Manager** -> **Network adapters**.
   * Look for your wireless chip (e.g., Intel Wi-Fi 6E/7). Ensure it supports the modern bands required for your environment.
3. **Wired Ethernet Port Check:** Do not forget to plug an Ethernet cable into the RJ45 LAN port. Ensure the link speed registers as **1000 Mbps (1 Gbps)** in Windows Network Properties, confirming the port pins are not bent or broken.
