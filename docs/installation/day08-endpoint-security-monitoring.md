\# Day 08 - Endpoint Security Monitoring



\## Scope



Security monitoring was validated on the protected Linux endpoint named `web-server`.



\## File Integrity Monitoring



The directory `/opt/mini-soc-fim` was monitored in real time.



Validated activities:



\- File creation

\- File modification

\- Permission change

\- File rename

\- File deletion



\## Authentication Monitoring



A controlled invalid SSH login was performed inside the isolated VMware lab.



Threat Hunting displayed:



\- 221 total events

\- 10 authentication failures

\- 67 authentication successes



Observed event groups included:



\- sshd

\- invalid\_login

\- authentication\_failed

\- pam

\- sudo



\## System Inventory



Wazuh collected:



\- Operating system information

\- Installed packages

\- Kernel version

\- Network interfaces

\- Processes

\- Listening ports

\- Hardware information



\## Security Configuration Assessment



The Ubuntu security policy produced passed, failed and not-applicable checks.



Failed checks were reviewed as hardening recommendations. No automatic bulk remediation was performed.



\## Vulnerability Detection



The dashboard displayed:



\- Critical: 77

\- High: 503

\- Medium: 407

\- Low: 4

\- Pending evaluation: 560



The results represent assessment records at the time of collection and require package-level verification before remediation.



No intentionally vulnerable software was installed.



\## System Health



The following components remained active:



\- Wazuh Agent

\- Wazuh Manager

\- Wazuh Indexer

\- Wazuh Dashboard

\- Filebeat



SSH, Dashboard, agent communication and enrollment ports remained reachable.



\## Safety



All tests were performed inside an isolated VMware lab owned and controlled by the project author.



\## Next Step



Deploy and monitor the Windows endpoint.

