\# Day 05 - SOC-WAZUH Foundation



\## Virtual Machine



\- Name: SOC-WAZUH

\- Operating system: Ubuntu Server 24.04.4 LTS

\- CPU: 4 vCPU

\- Memory: 8 GB

\- Storage: approximately 45 to 50 GB

\- Network: VMnet1 only



\## Network Configuration



\- Address: 192.168.30.10/24

\- Default gateway: 192.168.30.254

\- DNS servers: 1.1.1.1 and 8.8.8.8



The virtual machine does not use a direct NAT or bridged adapter.



All Internet traffic passes through SOC-GATEWAY.



\## NAT Validation



SOC-WAZUH successfully:



\- Reached SOC-GATEWAY

\- Reached an external IPv4 address

\- Resolved DNS records

\- Established HTTPS connections

\- Updated Ubuntu packages



The forwarding and NAT masquerade counters on SOC-GATEWAY increased while SOC-WAZUH generated Internet traffic.



\## System Validation



\- SSH was enabled and active.

\- No failed systemd units remained.

\- The VM detected 4 vCPU and approximately 8 GB RAM.

\- Static addressing survived reboot.

\- The root filesystem was prepared for the Wazuh all-in-one installation.



\## Next Step



Install and validate the Wazuh central components:



\- Wazuh Server

\- Wazuh Indexer

\- Wazuh Dashboard

