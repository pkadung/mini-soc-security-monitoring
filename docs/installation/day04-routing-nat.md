\## Network Wait-Online Handling



The gateway has multiple network interfaces with different roles.



Only the WAN interface is required to reach the routable state during boot. The Management and Protected interfaces are configured as optional because they do not define default routes.



A systemd override was added so that systemd-networkd-wait-online waits only for wan0.



Validation after reboot confirmed:



\- Result=success

\- ExecMainStatus=0

\- No failed systemd units

