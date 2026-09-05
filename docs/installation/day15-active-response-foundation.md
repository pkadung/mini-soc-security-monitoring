\# Day 15 - Active Response Foundation



\## Objective



Prepare Wazuh Active Response for automated threat mitigation.



\## Configuration



The firewall-drop active response command was configured.



Configuration:



\- Command: firewall-drop

\- Location: local

\- Level: 10

\- Timeout: 300 seconds



\## Whitelist



Protected management network:



192.168.30.0/24



\## Validation



\- wazuh-manager active

\- wazuh-integratord running

\- active-response configuration loaded

\- timeout configured

\- whitelist configured



\## Result



The environment is prepared for automatic blocking and automatic unblocking validation.

