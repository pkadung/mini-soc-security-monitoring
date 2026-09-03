# Day 13 - Grafana and Zabbix Integration

## Objective

Deploy Grafana on SOC-MONITOR and visualize infrastructure metrics collected by Zabbix.

## System

- Host: SOC-MONITOR
- IP address: 192.168.30.20
- Grafana port: 3000
- Zabbix API version: 7.0.30
- Data source: Mini SOC Zabbix

## Integration

The Grafana Zabbix plugin connects to the local Zabbix API endpoint.

A dedicated Zabbix account named grafana-reader provides read access to the required host groups and monitoring data.

## Dashboard

The Mini SOC Grafana Infrastructure Overview dashboard contains:

- SOC-MONITOR CPU utilization
- SOC-MONITOR memory utilization
- SOC-GATEWAY CPU utilization
- SOC-GATEWAY memory utilization
- Active infrastructure problems
- Automatic refresh every 30 seconds

## Validation

Grafana successfully connected to the Zabbix API.

CPU and memory metrics from SOC-MONITOR and SOC-GATEWAY were displayed successfully. The Problems query also retrieved current Zabbix trigger information.

SOC-WAZUH and WEB-SERVER were powered off during final dashboard validation to reduce host storage and memory usage. Their monitoring data will resume automatically when the virtual machines are powered on.

## Security

The default Grafana administrator password was changed.

A dedicated Zabbix account was used instead of the Zabbix administrator account.

Credentials, database passwords, API secrets, and private evidence are excluded from the public repository.
