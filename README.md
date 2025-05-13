# 🛰️ Adding WiFi Support to QEMU Simulation in LibreMesh

This project adds WiFi simulation support to QEMU virtual machines running LibreMesh firmware using the `mac80211_hwsim` kernel module. It enables fully virtualized testing of wireless mesh networks without the need for physical hardware.

---

## 🧩 Project Overview

LibreMesh currently lacks a standardized virtual WiFi testing setup. This project aims to:
- Integrate `mac80211_hwsim` with QEMU to simulate wireless radios.
- Automate VM creation, network setup, and testing.
- Support reproducible and scriptable testbeds for LibreMesh.

---

## 🛠️ Features

- 🧪 Virtual WiFi radios using `mac80211_hwsim`
- 📡 Simulated mesh network with multiple VMs
- ⚙️ Shell scripts for:
  - VM creation
  - Interface attachment
  - Firmware setup
  - Network testing
- 🔁 Fully reproducible environment using reset and image download scripts
- 🌐 LuCI access via port forwarding

---

## 📁 Scripts

| Script | Description |
|--------|-------------|
| `setup_virtual_wifi.sh` | Loads `mac80211_hwsim` and creates virtual radios |
| `start_libremesh_vm.sh` | Boots QEMU VM with LibreMesh firmware |
| `attach_interface_to_vm.sh` | Connects virtual WiFi interfaces to VM bridges |
| `test_runner.sh` | Automates VM creation, mesh setup, and testing |
| `reproducible_setup.sh` | Resets environment and downloads base image |

---

## 🧪 Test Plan

✅ Validate:
- Virtual radios creation
- VM boot with LibreMesh
- Port forwarding and LuCI access
- Mesh connectivity using `ping` and `bmx6`
- Routing behavior during VM events (restart/shutdown)

---

## 🚀 Getting Started

### 1. Requirements
- Linux with `modprobe`, `qemu`, `brctl`, `iw`, and `iproute2`
- LibreMesh-compatible OpenWrt image
- Internet access to download base image

### 2. Setup Instructions
```bash
chmod +x *.sh
./reproducible_setup.sh     # Reset environment and download base image
./setup_virtual_wifi.sh     # Create virtual WiFi interfaces
./start_libremesh_vm.sh     # Start LibreMesh VMs
./attach_interface_to_vm.sh # Connect interfaces to VMs
./test_runner.sh            # Run mesh connectivity tests
