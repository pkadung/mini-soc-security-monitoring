\# Project Plan



\## Thời hạn



Ngày hoàn thành dự kiến: 13/09/2026



\## Giai đoạn 1: Chuẩn bị hạ tầng



\- \[x] Tạo cấu trúc thư mục dự án

\- \[x] Tải Ubuntu Server ISO

\- \[x] Kiểm tra SHA-256

\- \[x] Cấu hình VMware Virtual Network

\- \[x] Tạo SOC-GATEWAY

\- \[x] Cấu hình Routing và NAT



\## Giai đoạn 2: Wazuh



\- \[x] Tạo SOC-WAZUH

\- \[x] Cài Wazuh All-in-One

\- \[x] Kết nối Linux Agent

\- \[x] Kết nối Windows Agent

\- \[x] Cấu hình File Integrity Monitoring

\- \[x] Cấu hình Vulnerability Detection

\- \[x] Kiểm tra Authentication Alerts



\## Giai đoạn 3: Suricata



\- \[x] Cài Suricata IDS

\- \[x] Cấu hình HOME\_NET

\- \[x] Cập nhật Rules

\- \[x] Kiểm tra eve.json

\- \[x] Tích hợp Suricata vào Wazuh

\- \[x] Kiểm thử cảnh báo mạng

\- \[ ] Chuyển một số Rule sang IPS



\## Giai đoạn 4: Zabbix và Grafana



\- \[x] Tạo SOC-MONITOR

\- \[x] Cài Zabbix Server

\- \[x] Cài Linux Agent

\- \[x] Cài Windows Agent

\- \[x] Tạo Trigger

\- \[x] Cài Grafana

\- \[x] Xây dựng Dashboard



\## Giai đoạn 5: Notification và Active Response



\- \[x] Tạo Discord Server

\- \[x] Tạo Webhook

\- \[x] Tích hợp Wazuh Notification

\- \[ ] Tích hợp Zabbix Notification

\- \[x] Cấu hình Whitelist

\- \[x] Cấu hình Block tạm thời

\- \[ ] Kiểm tra tự động Unblock



\## Giai đoạn 6: Kiểm thử



\- \[ ] SSH Authentication Failure

\- \[ ] SSH Brute Force

\- \[ ] Network Scan

\- \[x] File Integrity Change

\- \[ ] CPU Overload

\- \[ ] Host Down

\- \[ ] Service Down

\- \[x] Discord Notification

\- \[ ] Automatic Blocking

\- \[ ] Automatic Unblocking



\## Giai đoạn 7: AI



\- \[ ] Đọc Wazuh Alert JSON

\- \[ ] Tóm tắt sự kiện

\- \[ ] Giải thích mức độ nguy hiểm

\- \[ ] Đề xuất bước điều tra

\- \[ ] Gửi bản tóm tắt sang Discord



\## Giai đoạn 8: Hồ sơ



\- \[ ] Hoàn thiện báo cáo

\- \[ ] Hoàn thiện Source Code

\- \[ ] Hoàn thiện Slide

\- \[ ] Quay video minh họa

\- \[ ] Luyện Demo

