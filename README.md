# Scripts-CEH-Master

This repository contains my personal Bash and Python automation tools designed for penetration testing methodology, labs (TryHackMe / Hack The Box), and CEH Master preparation.

## 🛠️ Tools Included

### 1. Automated Reconnaissance (`auto_recon.sh`)
An advanced Bash script built to streamline the initial phase of a penetration test.

* **Target Validation:** Verifies host availability via ICMP ping before executing tools.
* **Workspace Isolation:** Automatically generates an organized directory structure (`nmap`, `exploits`, `evidence`) for the target IP.
* **Comprehensive Scanning:** Launches a full-port Nmap scan mapping all ports, service versions (`-sV`), and default scripts (`-sC`).

## 🚀 Usage

```bash
./auto_recon.sh <TARGET_IP>
```
