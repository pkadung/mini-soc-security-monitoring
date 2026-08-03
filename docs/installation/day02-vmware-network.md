\# Day 02 - Ubuntu ISO and VMware Network Preparation



\## Ubuntu Server ISO



\- Version: Ubuntu Server 24.04.4 LTS

\- Architecture: AMD64

\- Image type: Live Server ISO

\- SHA-256 verification: Passed



\## Virtual Network Architecture



\### VMnet8 - External Network



\- Network type: NAT

\- Subnet: 192.168.10.0/24

\- DHCP: Enabled

\- Host adapter: Enabled

\- Purpose: Internet connectivity and external network simulation



\### VMnet1 - Management Network



\- Network type: Host-only

\- Subnet: 192.168.30.0/24

\- DHCP: Disabled

\- Host adapter: Enabled

\- Purpose: Security and infrastructure management



Planned addresses:



\- Windows host: 192.168.30.1

\- SOC-WAZUH: 192.168.30.10

\- SOC-MONITOR: 192.168.30.20

\- SOC-GATEWAY: 192.168.30.254



\### VMnet2 - Protected Network



\- Network type: Host-only

\- Subnet: 192.168.20.0/24

\- DHCP: Disabled

\- Host adapter: Enabled

\- Purpose: Protected servers and endpoints



Planned addresses:



\- Windows host: 192.168.20.1

\- WEB-SERVER: 192.168.20.10

\- SOC-GATEWAY: 192.168.20.254



\## Validation Results



\- The Ubuntu ISO passed SHA-256 verification.

\- VMnet8 remained configured in NAT mode.

\- VMnet1 and VMnet2 were configured in Host-only mode.

\- DHCP was disabled on the two internal networks.

\- Windows obtained host adapter addresses on all three VMnets.

\- Windows retained Internet and DNS connectivity.



\## Security Rationale



The management network is separated from the protected server network. This design allows monitoring systems to remain isolated from the protected endpoint segment while the gateway controls communication between network zones.

