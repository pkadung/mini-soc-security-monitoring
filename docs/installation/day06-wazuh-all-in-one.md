\# Day 06 - Wazuh All-in-One Installation



\## Deployment



Wazuh 4.14 central components were installed on SOC-WAZUH using the official installation assistant.



Installed components:



\- Wazuh Server

\- Wazuh Indexer

\- Wazuh Dashboard

\- Filebeat



\## Host



\- Hostname: SOC-WAZUH

\- Address: 192.168.30.10/24

\- Gateway: 192.168.30.254

\- Operating system: Ubuntu Server 24.04.4 LTS

\- CPU: 4 vCPU

\- Memory: 8 GB

\- Storage: approximately 45 to 50 GB



\## Dashboard



The dashboard is available at:



`https://192.168.30.10`



The initial administrator credential is stored outside the public Git repository.



\## Validation



\- Wazuh Manager was enabled and active.

\- Wazuh Indexer was enabled and active.

\- Wazuh Dashboard was enabled and active.

\- Filebeat was enabled and active.

\- The dashboard responded over HTTPS.

\- The central components remained active after reboot.

\- No failed systemd units remained.

\- Installation logs were sanitized before being stored as evidence.



\## Security



\- Administrator passwords are not stored in the repository.

\- Installation logs included in evidence have credentials redacted.

\- HTTPS uses a lab certificate and is limited to the Management network.



\## Next Step



Deploy a Wazuh agent on the protected Ubuntu server and validate event ingestion.

