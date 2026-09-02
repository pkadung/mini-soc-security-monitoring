# Day 12 - Zabbix Agent Deployment

## Objective

Deploy Zabbix Agent 2 across the Mini SOC infrastructure and provide centralized infrastructure monitoring.

## Monitored hosts

- SOC-MONITOR: 192.168.30.20
- SOC-GATEWAY: 192.168.30.254
- SOC-WAZUH: 192.168.30.10
- WEB-SERVER: 192.168.20.10
- Windows 11 Host: 192.168.30.1

## Linux monitoring

SOC-GATEWAY, SOC-WAZUH, and WEB-SERVER use Zabbix Agent 2 with the Linux by Zabbix agent template.

Validated metrics include CPU utilization, memory utilization, filesystem utilization, network traffic, system uptime, process information, and agent availability.

## Windows monitoring

The physical Windows 11 endpoint uses Zabbix Agent 2 with the Windows by Zabbix agent template.

Validated metrics include CPU utilization, memory utilization, drive C utilization, network traffic, system uptime, and Windows service status.

## Dashboard

The centralized Zabbix dashboard reported five enabled and available hosts:

- Zabbix server
- SOC-GATEWAY
- SOC-WAZUH
- WEB-SERVER
- Windows 11 Host

The dashboard displayed host availability, CPU utilization, infrastructure problems, server status, and current alerts.

## Result

All five monitored hosts were available. Linux and Windows infrastructure metrics were collected successfully and displayed through the Zabbix frontend.

## Security

Zabbix Agent access is restricted to the Zabbix Server at 192.168.30.20. Credentials, private evidence, and configuration files containing secrets are excluded from the public repository.
