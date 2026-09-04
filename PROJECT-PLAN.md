\# Project Plan



\## Thời hạn



Ngày hoàn thành dự kiến: 13/09/2026



\## Giai đoạn 1: Chuẩn bị hạ tầng



\- \[\[codv/

/

=

&#x20;and operating systemso cấu trúc thư mục

\- \[x] Tải Ubuntu Server ISO

\- \[x] Kiểm tra SHA-256

\- \[x] Cấu hình VMware Virtual Network

\- \[x] Tạo SOC-GATEWAY

\- \[x] Cấu hình routing và NAT



\## Giai đoạn 2: Wazuh



\- \[x] Tạo SOC-WAZUH

\- \[x] Cài Wazuh all-in-one

\- \[x] Kết nối Linux Agent

\- \[x] Kết nối Windows Agent

\- \[x] Cấu hình File Integrity Monitoring

\- \[x] Cấu hình Vulnerability Detection

\- \[x] Kiểm tra authentication alerts



\## Giai đoạn 3: Suricata



\- \[x] Cài Suricata IDS

\- \[x] Cấu hình HOME\_NET

\- \[x] Cập nhật rules

\- \[x] Kiểm tra eve.json

\- \[x] Tích hợp Suricata vào Wazuh

\- \[x] Kiểm thử cảnh báo mạng

\- \[ ] Chuyển một số rule sang IPS



\## Giai đoạn 4: Zabbix và Grafana



\- \[x] Tạo SOC-MONITOR

\- \[x] Cài Zabbix Server

\- \[x] Cài Linux Agent

\- \[x] Cài Windows Agent

\- \[x] Tạo trigger

\- \[x] Cài Grafana

\- \[x] Xây dựng dashboard



\## Giai đoạn 5: Notification và Active Response



\- \[x] Tạo Discord Server

\- \[x] Tạo webhook

\- \[x] Tích hợp Wazuh notification

\- \[ ] Tích hợp Zabbix notification

\- \[ ] Cấu hình whitelist

\- \[ ] Cấu hình block tạm thời

\- \[ ] Kiểm tra tự động unblock



\## Giai đoạn 6: Kiểm thử



\- \[ ] SSH authentication failure

\- \[ ] SSH brute force

\- \[ ] Network scan

\- \[x] File integrity change

\- \[ ] CPU overload

\- \[ ] Host down

\- \[ ] Service down

\- \[x] Discord notification

\- \[ ] Automatic blocking

\- \[ ] Automatic unblocking



\## Giai đoạn 7: AI



\- \[ ] Đọc Wazuh alert JSON

\- \[ ] Tóm tắt sự kiện

\- \[ ] Giải thích mức độ nguy hiểm

\- \[ ] Đề xuất bước điều tra

\- \[ ] Gửi bản tóm tắt sang Discord



\## Giai đoạn 8: Hồ sơ



\- \[ ] Hoàn thiện báo cáo

\- \[ ] Hoàn thiện source code

\- \[ ] Hoàn thiện slide

\- \[ ] Quay video dự phòng

\- \[ ] Luyện demo

