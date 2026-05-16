import socket
import sys

def grab_banner(ip, port):
    try:
        # Create a socket object (TCP)
        s = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
        # Set a 3-second timeout so it doesn't hang forever
        s.settimeout(3.0)
        # Connect to the target IP and port
        s.connect((ip, int(port)))
        
        # Send a basic HTTP request if checking port 80/443
        if port in [80, 8080]:
            s.send(b"GET / HTTP/1.1\r\nHost: target\r\n\r\n")
            
        # Receive up to 1024 bytes of data from the service
        banner = s.recv(1024)
        print(f"\n[+] Banner grabbed from {ip}:{port} ->")
        print(banner.decode('utf-8', errors='ignore').strip())
        s.close()
        
    except socket.timeout:
        print(f"[-] Connection timeout on {ip}:{port}")
    except Exception as e:
        print(f"[-] Could not connect to {ip}:{port}. Error: {e}")

if __name__ == "__main__":
    if len(sys.argv) != 3:
        print("\n[!] Usage: python3 banner_grabber.py <IP> <PORT>")
        print("[-] Example: python3 banner_grabber.py 10.10.10.42 80\n")
        sys.exit(1)
        
    target_ip = sys.argv[1]
    target_port = int(sys.argv[2])
    grab_banner(target_ip, target_port)
