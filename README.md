# \# Mini SOC Security Monitoring System

# 

# \## Giới thiệu

# 

# Đây là đồ án xây dựng hệ thống giám sát an toàn thông tin và hạ tầng theo mô hình Mini Security Operations Center.

# 

# Hệ thống dự kiến kết hợp:

# 

# \- Wazuh SIEM/XDR

# \- Suricata IDS/IPS

# \- Zabbix Infrastructure Monitoring

# \- Grafana Dashboard

# \- Discord Webhook

# \- VMware Workstation

# \- Ubuntu Server

# \- Windows Endpoint

# \- AI-assisted alert analysis

# 

# \## Mục tiêu

# 

# \- Thu thập và phân tích log tập trung.

# \- Giám sát endpoint Windows và Linux.

# \- Phát hiện hành vi đáng ngờ trên mạng.

# \- Giám sát CPU, RAM, disk, network và service.

# \- Gửi cảnh báo theo thời gian thực.

# \- Tự động chặn một số hành vi có độ tin cậy cao.

# \- Ghi lại bằng chứng và thời gian phản ứng.

# \- Bổ sung AI để tóm tắt và hỗ trợ điều tra cảnh báo.

# 

# \## Kiến trúc dự kiến

# 

# \- `SOC-GATEWAY`: Ubuntu Router, Firewall và Suricata

# \- `SOC-WAZUH`: Wazuh Server, Indexer và Dashboard

# \- `SOC-MONITOR`: Zabbix Server và Grafana

# \- `WEB-SERVER`: Ubuntu endpoint được bảo vệ

# \- `WINDOWS-HOST`: Windows endpoint vật lý

# \- `KALI-ATTACKER`: Máy kiểm thử trong môi trường lab

# 

# \## Phạm vi an toàn

# 

# Tất cả hoạt động kiểm thử an toàn thông tin chỉ được thực hiện trong môi trường lab do người thực hiện sở hữu và kiểm soát.

# 

# Không sử dụng công cụ hoặc cấu hình trong repository này để kiểm thử các hệ thống không có sự cho phép.

# 

# \## Cấu trúc repository

# 

# \- `architecture`: Sơ đồ và kế hoạch địa chỉ IP

# \- `docs`: Tài liệu cài đặt, vận hành và xử lý lỗi

# \- `wazuh`: Rule, agent configuration và Active Response

# \- `suricata`: Rule và cấu hình Suricata

# \- `zabbix`: Template và media type

# \- `grafana`: Dashboard export

# \- `notification`: Tích hợp Discord

# \- `ai-agent`: Thành phần hỗ trợ phân tích cảnh báo

# \- `tests`: Test case và kết quả kiểm thử

# \- `scripts`: Script hỗ trợ triển khai

# 

# \## Trạng thái

# 

# Dự án đang trong giai đoạn thiết kế và chuẩn bị hạ tầng.

# 

# \## Tác giả

# 

# PHẠM KHẮC ANH DŨNG

