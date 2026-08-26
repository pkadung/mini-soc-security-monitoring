# Day 09 - Windows Endpoint Security Monitoring

## Endpoint

- Agent name: windows-11-host
- Agent ID: 002
- Operating system: Microsoft Windows 11
- Wazuh Agent version: 4.14.7
- Status: Active
- Group: default

## Features validated

- Wazuh Agent enrollment
- Encrypted communication with Wazuh Manager
- Windows system inventory
- Security Configuration Assessment
- Vulnerability Detection
- Windows Defender event collection
- File Integrity Monitoring

## File Integrity Monitoring

Monitored directory:

C:\Mini-SOC-FIM

The validation included creating, modifying, and renaming a text file. The resulting FIM events were successfully displayed on the Wazuh Dashboard.

## Results

- Windows Agent connected successfully
- System inventory was collected
- SCA scan completed
- Vulnerability information was displayed
- FIM events were detected and indexed
- Evidence was stored locally outside the public repository

## Security notes

Credentials, private system information, serial numbers, API tokens, and raw evidence are not stored in the public repository.
