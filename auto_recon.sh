#!/bin/bash

# auto_recon.sh - Automated reconnaissance script for TryHackMe / HTB
# Author: Your Name

# 1. Check if the target IP was provided
if [ -z "$1" ]; then
    echo -e "\n[!] Usage: $0 <TARGET_IP>"
    echo -e "[-] Example: $0 10.10.10.42\n"
    exit 1
fi

TARGET_IP=$1

# 2. Create an organized directory structure
echo -e "\n[*] Creating workspace directories..."
mkdir -p target_recon/nmap
mkdir -p target_recon/exploits
mkdir -p target_recon/evidence

# 3. Quick connectivity check (Ping)
echo "[*] Verifying connectivity to: $TARGET_IP..."
ping -c 1 $TARGET_IP > /dev/null

if [ $? -eq 0 ]; then
    echo "[+] Target is alive. Starting Nmap scan..."
else
    echo "[-] No response from target IP. Please check your VPN connection."
    exit 1
fi

# 4. Launch comprehensive Nmap scan
# -p- (all ports), -sC (default scripts), -sV (version detection), -v (verbose)
echo "[*] Running full port scan (this might take a while)..."
nmap -p- -sC -sV -v $TARGET_IP -oN target_recon/nmap/full_scan.txt

echo -e "\n[+] Scan completed successfully!"
echo "[+] Results saved to: target_recon/nmap/full_scan.txt\n"
