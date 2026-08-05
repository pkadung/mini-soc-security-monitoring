\# Day 03 - SOC Gateway Installation



\## Virtual Machine Configuration



\- Name: SOC-GATEWAY

\- Operating system: Ubuntu Server 24.04.4 LTS

\- Firmware: UEFI

\- CPU: 2 vCPU

\- Memory: 2 GB

\- Storage: 16 GB, dynamically allocated

\- Hypervisor: VMware Workstation Pro



\## Network Adapters



\- Adapter 1: VMnet8, External/WAN

\- Adapter 2: VMnet1, Management

\- Adapter 3: VMnet2, Protected



\## Installed Components



\- Ubuntu Server

\- OpenSSH Server

\- Network troubleshooting utilities

\- System administration utilities



\## Initial Network State



\- The External interface received an IPv4 address from VMware NAT DHCP.

\- The Management interface did not receive an IPv4 address because DHCP was disabled.

\- The Protected interface did not receive an IPv4 address because DHCP was disabled.

\- Static internal addressing will be configured during Day 04.



\## Validation



\- Ubuntu Server booted successfully.

\- The hostname was configured as `soc-gateway`.

\- Internet connectivity was verified.

\- DNS resolution was verified.

\- The SSH service was active.

\- The three network interfaces were identified and mapped to VMware VMnets.

\- No routing or NAT rules were enabled during this stage.

