\# Day 16 - Active Response Validation



\## Objective



Validate Wazuh Active Response using firewall-drop.



\## Test Scenario



Repeated SSH authentication failures were generated against WEB-SERVER.



\## Detection



Wazuh generated:



\- Rule 2502

\- SSH brute force detection



\## Response



Wazuh triggered:



\- Rule 651

\- Host Blocked by firewall-drop Active Response



\## Validation



\- SSH authentication failure detected

\- SSH brute force detected

\- Active Response triggered

\- Source host blocked

\- Automatic unblock after timeout



\## Result



Automatic incident response was successfully validated.

