# Scripts-CEH-Master

This repository contains my personal Bash and Python automation tools designed for penetration testing methodology, labs (TryHackMe / Hack The Box), and CEH Master preparation.

## 🛠️ Tools Included

### 1. Automated Reconnaissance (`auto_recon.sh`)
An advanced Bash script built to streamline the initial phase of a penetration test.

* **Target Validation:** Verifies host availability via ICMP ping before executing tools.
* **Workspace Isolation:** Automatically generates an organized directory structure (`nmap`, `exploits`, `evidence`) for the target IP.
* **Comprehensive Scanning:** Launches a full-port Nmap scan mapping all ports, service versions (`-sV`), and default scripts (`-sC`).

### 2. Service Banner Grabber (`banner_grabber.py`)
A Python script designed for passive and active service enumeration using network sockets.

* **Information Gathering:** Connects to specific ports to extract version banners from running applications (SSH, FTP, HTTP, etc.).
* **Robust Error Handling:** Implements precise timeouts to optimize speed during auditing.

## 🚀 Usage

### Bash Script:
```bash
./auto_recon.sh <TARGET_IP>
```

### Python Script:
```bash
python3 banner_grabber.py <TARGET_IP> <PORT>
```
