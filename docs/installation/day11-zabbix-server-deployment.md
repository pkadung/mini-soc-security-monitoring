# Day 11 - Zabbix Server Deployment

## System

- Host: SOC-MONITOR
- Operating system: Ubuntu Server 24.04 LTS
- Management IP: 192.168.30.20/24
- Gateway: 192.168.30.254
- Network: VMnet1 Management Network

## Components

- Zabbix Server 7.0 LTS
- Zabbix Agent 2
- MySQL Server
- Apache web server
- Zabbix web frontend

## Monitoring validation

The local Zabbix Agent successfully provided infrastructure metrics to the Zabbix Server.

Validated metrics include:

- CPU utilization
- Memory utilization
- Disk capacity and usage
- Network traffic
- System uptime
- Process availability

## Result

The Zabbix frontend was successfully accessed from the Windows host. The Zabbix Server, Agent 2, MySQL, and Apache services remained operational after reboot.

## Security notes

Database credentials, administrator passwords, raw configuration files containing secrets, and private evidence are excluded from the public repository.
