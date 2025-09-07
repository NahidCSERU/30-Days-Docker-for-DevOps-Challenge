# Day 22 – Docker Logs + Monitoring

This project demonstrates how to collect **Docker container logs** and monitor **resource usage** using `docker stats`.

---

## 📂 Project Structure
```
day22-monitoring/
│── docker-compose.yml # Example containers (Nginx + Alpine)
│── scripts/
│ ├── collect-logs.sh # Collect logs from all running containers
│ └── monitor-stats.sh # Capture CPU/Memory stats
│── README.md
```
## 🚀 Usage

1. Start containers:
   ```
   docker-compose up -d
   ```
2. Collect logs:
    ```
    bash scripts/collect-logs.sh
    ```
3. Monitor stats:
    ```
    bash scripts/monitor-stats.sh
    ```
## 📊 Sample Output
Logs (Nginx):   

```
2025/09/07 13:01:21 [notice] 1#1: start worker process 25
2025/09/07 13:01:21 [notice] 1#1: start worker process 26
```
Stats:
```
CONTAINER   NAME        CPU %   MEM USAGE / LIMIT
123abc456   nginx_web   0.05%   10MiB / 2GiB
789def123   alpine_app  0.01%   2MiB / 2GiB
```
## 📌 Notes

- Logs are saved inside `logs/` folder.

- Stats are written to `logs/container-stats.txt`.

- Extend scripts to add alerting or cron-based automation.

## 🌟 Next Steps

- Integrate with **Prometheus + Grafana** for advanced monitoring.

- Automate log collection with **ELK/EFK stack**.

