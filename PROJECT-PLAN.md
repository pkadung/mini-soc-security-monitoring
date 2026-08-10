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

\- \[ ] Cài Wazuh all-in-one

\- \[ ] Kết nối Linux Agent

\- \[ ] Kết nối Windows Agent

\- \[ ] Cấu hình File Integrity Monitoring

\- \[ ] Cấu hình Vulnerability Detection

\- \[ ] Kiểm tra authentication alerts



\## Giai đoạn 3: Suricata



\- \[ ] Cài Suricata IDS

\- \[ ] Cấu hình HOME\_NET

\- \[ ] Cập nhật rules

\- \[ ] Kiểm tra eve.json

\- \[ ] Tích hợp Suricata vào Wazuh

\- \[ ] Kiểm thử cảnh báo mạng

\- \[ ] Chuyển một số rule sang IPS



\## Giai đoạn 4: Zabbix và Grafana



\- \[ ] Tạo SOC-MONITOR

\- \[ ] Cài Zabbix Server

\- \[ ] Cài Linux Agent

\- \[ ] Cài Windows Agent

\- \[ ] Tạo trigger

\- \[ ] Cài Grafana

\- \[ ] Xây dựng dashboard



\## Giai đoạn 5: Notification và Active Response



\- \[ ] Tạo Discord Server

\- \[ ] Tạo webhook

\- \[ ] Tích hợp Wazuh notification

\- \[ ] Tích hợp Zabbix notification

\- \[ ] Cấu hình whitelist

\- \[ ] Cấu hình block tạm thời

\- \[ ] Kiểm tra tự động unblock



\## Giai đoạn 6: Kiểm thử



\- \[ ] SSH authentication failure

\- \[ ] SSH brute force

\- \[ ] Network scan

\- \[ ] File integrity change

\- \[ ] CPU overload

\- \[ ] Host down

\- \[ ] Service down

\- \[ ] Discord notification

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

