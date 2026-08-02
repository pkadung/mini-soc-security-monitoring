\# IP Addressing Plan



\## External Network



\- VMware network: VMnet8

\- Type: NAT

\- Subnet: 192.168.10.0/24

\- Address allocation: VMware DHCP



\## Management Network



\- VMware network: VMnet1

\- Type: Host-only

\- Subnet: 192.168.30.0/24

\- DHCP: Disabled



| Device | Address | Purpose |

|---|---|---|

| Windows VMware Adapter | 192.168.30.1 | Host management |

| SOC-WAZUH | 192.168.30.10 | SIEM/XDR |

| SOC-MONITOR | 192.168.30.20 | Zabbix and Grafana |

| SOC-GATEWAY | 192.168.30.254 | Default gateway |



\## Protected Network



\- VMware network: VMnet2

\- Type: Host-only

\- Subnet: 192.168.20.0/24

\- DHCP: Disabled



| Device | Address | Purpose |

|---|---|---|

| Windows VMware Adapter | 192.168.20.1 | Host administration |

| WEB-SERVER | 192.168.20.10 | Protected endpoint |

| SOC-GATEWAY | 192.168.20.254 | Default gateway |

