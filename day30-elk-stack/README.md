# Day 30 – Final Project: ELK Stack Monitoring Dashboard on Docker

## Overview
This project sets up a **Monitoring Dashboard using ELK Stack (Elasticsearch, Logstash, Kibana)** with **Docker Compose**.  
It provides centralized log collection, parsing, and visualization for DevOps use cases.



## Architecture
- **Elasticsearch:** Stores and indexes logs.
- **Logstash:** Collects, parses, and ships logs.
- **Kibana:** Web UI for searching, analyzing, and visualizing logs.



##  Tech Stack
- Docker & Docker Compose
- ELK Stack (Elasticsearch, Logstash, Kibana)
- Beats/Filebeat (optional log forwarder)


##  How to Run

### 1️⃣ Clone Repository
```
git clone https://github.com/your-username/day30-elk-stack.git
cd day30-elk-stack
```
### 2️⃣ Start Services
```
docker-compose up -d
```
### 3️⃣ Access Kibana

- Open: `http://localhost:5601`

- Default Elastic endpoint: `http://localhost:9200`

## Project Structure
```
day30-elk-stack/
├── docker-compose.yml   # Docker services (Elasticsearch, Logstash, Kibana)
├── logstash.conf        # Logstash pipeline config
└── README.md            # Documentation
```
## Future Enhancements

- Add Filebeat for system/application logs.

- Configure alerting with ElastAlert/Prometheus.

- Enable authentication & TLS for production.