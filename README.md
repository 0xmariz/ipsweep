# IP Sweep Tool

This Bash script is designed to perform a simple IP sweep on a given network, save the discovered IP addresses to a file, and then scan those IP addresses using Nmap.

## Usage

1. Make sure you have Nmap installed on your system. If not, you can install it using your package manager (`apt`, `yum`, `brew`, etc.).

2. Clone this repository or download the `ipsweep.sh` file.

3. Make the script executable by running:

   ```bash
   chmod +x ipsweep.sh

## Running the Script

To run the script, provide the IP address you want to sweep as an argument. For example:

  ```bash
  ./ipsweep.sh <IP_address>

Replace <IP_address> with the IP address you want to sweep. This script will sweep all IP addresses from 1 to 254 on the same network segment as the provided IP address.

After execution, the script will create a file named ip.txt containing the discovered IP addresses.
