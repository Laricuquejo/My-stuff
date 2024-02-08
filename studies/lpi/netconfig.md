# Network Configuration with DHCP on Debian

This guide provides step-by-step instructions for configuring a network interface to use the Dynamic Host Configuration Protocol (DHCP) on a Debian system.

## Steps

1. **Access the Terminal**
   - Open a terminal on your Debian system.

2. **Identify Network Interfaces**
   - To identify available network interfaces, run the following command:
     ```
     ip link show
     ```
   - Note the name of the network interface you wish to configure with DHCP.

3. **Edit Configuration File**
   - Use a text editor such as Nano to edit the configuration file for the network interface. For example:
     ```
     sudo nano /etc/network/interfaces
     ```
   - Locate the section corresponding to the network interface you noted earlier.

4. **Configure for DHCP**
   - Replace any existing static configuration with the following line:
     ```
     iface <interface_name> inet dhcp
     ```
   - Replace `<interface_name>` with the name of the network interface.

5. **Restart Network Service**
   - To apply the changes, restart the network service with the following command:
     ```
     sudo systemctl restart networking
     ```

6. **Verify Configuration**
   - To verify if the network interface is configured correctly, run the following command:
     ```
     ip address show <interface_name>
     ```
   - Ensure that the IP address assigned to the interface is obtained from the DHCP server.

## Notes:
- Ensure you have superuser privileges (sudo) to edit configuration files and restart services.
- If you're configuring the network interface remotely, have a contingency plan to avoid loss of connectivity.

