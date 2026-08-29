<div align="center">

  <img src="logo.png" alt="Let's Play PS4 Host Logo" width="280" style="border-radius: 20px; filter: drop-shadow(0 0 30px rgba(0, 240, 255, 0.6));" />

  # 🚀 LET'S PLAY • PS4 EXPLOIT HOST
  ### 🎮 Premium WebKit & Kernel Exploit Suite for PS4 FW 10.00 - 11.02 🎮

  <p align="center">
    <strong>Crafted & Maintained by <a href="#-developer--lead">Ahmed Elattar</a></strong>
  </p>

  <!-- Badges -->
  <p align="center">
    <img src="https://img.shields.io/badge/Developer-Ahmed%20Elattar-00f0ff?style=for-the-badge&logo=github&logoColor=black" alt="Developer">
    <img src="https://img.shields.io/badge/Platform-PlayStation%204-003791?style=for-the-badge&logo=playstation&logoColor=white" alt="PlayStation 4">
    <img src="https://img.shields.io/badge/Firmware-11.02%20--%2013.00-7928ca?style=for-the-badge" alt="Firmware">
    <img src="https://img.shields.io/badge/Chains-Lapse%20%7C%20NetCtrl-ec4899?style=for-the-badge" alt="Chains">
    <img src="https://img.shields.io/badge/Payload-GoldHEN%20Loaded-00ff88?style=for-the-badge&logo=dependabot&logoColor=black" alt="GoldHEN">
    <img src="https://img.shields.io/badge/Cache-100%25%20Offline-ff0080?style=for-the-badge" alt="Offline Ready">
  </p>

  <p align="center">
    <a href="#-features">Features</a> •
    <a href="#-firmware-support-matrix">Compatibility</a> •
    <a href="#-how-to-run-locally">Quick Start</a> •
    <a href="#-how-to-use-on-ps4">PS4 Setup</a> •
    <a href="#-upload-to-github">GitHub Sync</a> •
    <a href="#-developer--lead">Developer</a>
  </p>

</div>

---

> [!IMPORTANT]
> **Let's Play Host (130N)** is a comprehensive, research-grade exploit environment engineered for PlayStation 4 consoles running system firmwares **11.02 through 13.00**. Featuring the **CSSFontFace UAF** WebKit exploit combined with dual kernel exploit engines (**Lapse** & **NetCtrl**), it provides unmatched stability, automated jailbreaking, and instant payload injection in a single streamlined experience.

---

## 🧭 Exploit Pipeline Architecture

The host executes in a deterministic, sequential pipeline optimized for WebKit stability and PS4 memory layout:

```
┌─────────────────────────┐
│   PS4 Web Browser       │ ──► User visits Let's Play Host (Local LAN IP)
└───────────┬─────────────┘
            │
            ▼
┌─────────────────────────┐
│   AppCache Verification │ ──► Automatically caches assets for 100% offline usage
└───────────┬─────────────┘
            │
            ▼
┌─────────────────────────┐
│  CSSFontFace UAF Stage  │ ──► Arbitrary R/W in WebKit userland process
└───────────┬─────────────┘
            │
            ▼
┌─────────────────────────┐
│ Kernel Exploit Chain    │ ──► Lapse (Double-free) or NetCtrl (ucred triple-free)
└───────────┬─────────────┘
            │
            ▼
┌─────────────────────────┐
│ Kernel Patches & HEN    │ ──► Patches applied for target FW (6.00-11.02) + GoldHEN!
└─────────────────────────┘
```

---

## 🌟 Key Features & Highlights

| Feature | Description |
| :--- | :--- |
| 🎨 **Cyberpunk Gaming UI** | High-end dark theme with vibrant cyan & violet neon glow, responsive TV-friendly layout, and micro-animations. |
| ⚙️ **Dual Kernel Engines** | Support for both **Lapse** (v2.04 engine) and **NetCtrl** kernel chains with instant selector switch. |
| ⏱️ **Auto Jailbreak Mode** | Configurable automatic countdown timer (5 seconds) with instant cancellation controls. |
| 🛡️ **100% Offline Capability** | Powered by HTML5 Application Cache manifest (`cache.manifest`) with dedicated installer progress bar. |
| 💻 **Live Styled Terminal** | Real-time color-coded exploit logger with stages output, error tracking, and copy-to-clipboard tools. |
| 🌐 **Dedicated HTTP Server** | Python-based exploit server with automatic local IP discovery and MIME type headers. |

---

## 📊 Firmware Support Matrix

The repository includes pre-built kernel patch binaries for:

| Firmware | Support Status | Kernel Binary | Exploit Chains |
| :---: | :---: | :---: | :---: |
| **6.00** | Full Support | `600.bin` | Lapse / NetCtrl |
| **6.20** | Full Support | `620.bin` | Lapse / NetCtrl |
| **6.50** | Full Support | `650.bin` | Lapse / NetCtrl |
| **6.70** | Full Support | `670.bin` | Lapse / NetCtrl |
| **7.00** | Full Support | `700.bin` | Lapse / NetCtrl |
| **7.50** | Full Support | `750.bin` | Lapse / NetCtrl |
| **8.00** | Full Support | `800.bin` | Lapse / NetCtrl |
| **8.50** | Full Support | `850.bin` | Lapse / NetCtrl |
| **9.00** | Full Support | `900.bin` | Lapse / NetCtrl |
| **9.03** | Full Support | `903.bin` | Lapse / NetCtrl |
| **9.50** | Full Support | `950.bin` | Lapse / NetCtrl |
| **10.00** | Full Support | `1000.bin` | Lapse / NetCtrl |
| **10.50** | Full Support | `1050.bin` | Lapse / NetCtrl |
| **11.00** | Full Support | `1100.bin` | Lapse / NetCtrl |
| **11.02** | Full Support | `1102.bin` | Lapse / NetCtrl |

---

## ⚡ How to Run Locally

### Option 1: Double-Click Launcher (Windows)
Double-click `RUN_SERVER.bat` in the project root. The launcher will automatically find Python, start the server, detect your local IP addresses, and open the host in your browser.

### Option 2: Command Line (PowerShell or Terminal)
```powershell
python server.py
```

The server will output your local network URLs:
```
====================================================================
      🚀  LET'S PLAY - PS4 EXPLOIT HOST SERVER (130N)  🚀
      Supporting PS4 Firmwares 6.00 - 11.02 | Ahmed Elattar
====================================================================
 [✔] Server Status: RUNNING ACTIVE
 🎮 Open one of the following URLs in your PS4 Web Browser:
--------------------------------------------------------------------
    👉 http://192.168.1.100:8080/
```

---

## 🎮 How to Use on PS4

1. Ensure your PS4 and PC are connected to the same local network (Wi-Fi or Ethernet).
2. Start the local server using `RUN_SERVER.bat`.
3. On your PS4, open the **Internet Browser** and navigate to `http://<YOUR_PC_IP>:8080/`.
4. The host will automatically download offline assets and register the AppCache.
5. Select your preferred kernel chain (**Lapse** or **NetCtrl**).
6. Click **Start Jailbreak** (or let Auto Jailbreak launch automatically).
7. Wait for the sequence to complete and payloads to load!

---

## 📤 Upload to GitHub

You can publish this project to your GitHub repository in seconds:

### Using the Batch Wizard:
1. Double-click `UPLOAD_TO_GITHUB.bat`.
2. Enter your GitHub repository URL (or press Enter to use the default).
3. The wizard will initialize Git, commit all files under **Ahmed Elattar**, and push to `main`.

### Using PowerShell:
```powershell
.\upload_to_github.ps1 -RepoUrl "https://github.com/YOUR_USERNAME/130N.git"
```

---

## 👤 Developer & Lead

- **Lead Developer**: **Ahmed Elattar**
- **Brand**: **LET'S PLAY**

---

<div align="center">
  <sub>Let's Play PS4 Host Suite • Built for research and educational purposes.</sub>
</div>
