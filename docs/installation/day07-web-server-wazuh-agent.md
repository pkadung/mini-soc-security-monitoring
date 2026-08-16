\# Day 07 - Protected WEB-SERVER and Wazuh Agent



\## Endpoint



\- Hostname: web-server

\- Operating system: Ubuntu Server 24.04.4 LTS

\- Address: 192.168.20.10/24

\- Gateway: 192.168.20.254

\- Network: VMnet2

\- Wazuh Manager: 192.168.30.10



\## Network Validation



The endpoint:



\- Reached SOC-GATEWAY

\- Accessed the Internet through NAT

\- Resolved DNS records

\- Connected to the Wazuh enrollment service

\- Connected to the Wazuh agent communication service



\## Wazuh Agent



The official Wazuh repository was added and the Linux agent was installed.



The agent was configured with:



\- Manager: 192.168.30.10

\- Agent name: web-server



\## Validation



\- The wazuh-agent service was enabled and active.

\- The endpoint appeared as Active in the Wazuh Dashboard.

\- The Manager recognized the endpoint.

\- Authentication log collection was validated.

\- Protected-to-Management forwarding counters increased.

\- Protected-to-WAN NAT counters increased.



\## Security Scope



All validation was performed inside an isolated VMware lab owned and controlled by the project author.

