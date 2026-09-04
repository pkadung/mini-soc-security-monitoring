# Day 14 - Wazuh Discord Notification

## Objective

Send selected Wazuh security alerts to a private Discord channel through a custom integration.

## Architecture

Wazuh Alert -> Wazuh Integrator -> Custom Discord Script -> Discord Webhook

## Components

- Wazuh Manager on SOC-WAZUH
- Custom integration named custom-discord
- Discord incoming webhook
- Private Discord channel named security-alerts

## Alert filtering

The integration forwards Wazuh alerts with rule level 7 or higher.

This threshold reduces low-priority notifications while retaining relevant security alerts.

## Validation

A File Integrity Monitoring event was generated on WEB-SERVER by creating and modifying the following file:

/opt/mini-soc-fim/day14-discord-test.txt

Wazuh detected the event, processed the alert, and forwarded the notification to Discord.

The Discord notification displayed:

- Rule ID
- Alert level
- Rule description
- Agent name
- Agent IP
- Timestamp

## Security

The Discord webhook is stored outside the public repository.

Webhook URLs, credentials, API tokens, private logs, and sensitive evidence are excluded from GitHub.

A webhook exposed during initial testing was replaced before the integration was completed.
