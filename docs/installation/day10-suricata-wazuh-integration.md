# Day 10 - Suricata IDS and Wazuh Integration

## Architecture

Network traffic path:

WEB-SERVER -> SOC-GATEWAY -> SOC-WAZUH

## Suricata deployment

- Host: SOC-GATEWAY
- Mode: IDS
- Capture method: AF_PACKET
- Monitored interface: protected0
- Protected network: 192.168.20.0/24
- Event output: /var/log/suricata/eve.json
- Ruleset: Emerging Threats Open and local rules

## Wazuh integration

The Wazuh Agent was installed on SOC-GATEWAY and configured to collect Suricata events from:

/var/log/suricata/eve.json

Log format:

json

## Validation rule

- Signature: MINI SOC ICMP Test Alert
- Signature ID: 1000001
- Action: Alert only
- Blocking: Disabled

## Validation result

ICMP traffic generated from WEB-SERVER was inspected by Suricata. The event was written to eve.json, collected by the Wazuh Agent, processed by the Wazuh Manager, and displayed on the Wazuh Dashboard.

## Security notes

Suricata remains in IDS mode. IPS and automatic blocking are not enabled at this stage to avoid disrupting the lab network.

Raw evidence, credentials, tokens, and private system information are not stored in the public repository.
