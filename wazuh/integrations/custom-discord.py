#!/usr/bin/env python3

import json
import sys
import urllib.request

alert_path = sys.argv[1]
hook_url = sys.argv[3]

with open(alert_path, "r", encoding="utf-8") as alert_file:
    alert = json.load(alert_file)

rule = alert.get("rule", {})
agent = alert.get("agent", {})

description = str(rule.get("description", "No description"))
rule_id = str(rule.get("id", "unknown"))
level = str(rule.get("level", "0"))
agent_name = str(agent.get("name", "Wazuh manager"))
agent_ip = str(agent.get("ip", "N/A"))
timestamp = str(alert.get("timestamp", "N/A"))

payload = {
    "username": "Mini SOC Wazuh",
    "embeds": [
        {
            "title": "Mini SOC Security Alert",
            "description": description,
            "color": 15158332,
            "fields": [
                {
                    "name": "Rule ID",
                    "value": rule_id,
                    "inline": True
                },
                {
                    "name": "Level",
                    "value": level,
                    "inline": True
                },
                {
                    "name": "Agent",
                    "value": agent_name,
                    "inline": True
                },
                {
                    "name": "Agent IP",
                    "value": agent_ip,
                    "inline": True
                },
                {
                    "name": "Timestamp",
                    "value": timestamp,
                    "inline": False
                }
            ]
        }
    ]
}

data = json.dumps(payload).encode("utf-8")

request = urllib.request.Request(
    hook_url,
    data=data,
    headers={
        "Content-Type": "application/json",
        "User-Agent": "Mini-SOC-Wazuh/1.0"
    },
    method="POST"
)

with urllib.request.urlopen(request, timeout=15) as response:
    response.read()