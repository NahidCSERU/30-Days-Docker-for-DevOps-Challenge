# Day 18 – WordPress + MySQL with Docker Compose

## Description
This project demonstrates how to deploy **WordPress with MySQL** using Docker Compose.  
- WordPress runs in a separate container.  
- MySQL runs in a separate container.  
- Data is persisted using Docker volumes.  

## Prerequisites
- Docker installed
- Docker Compose installed
- `.env` file configured

## How to Run

1. Pull images & start containers:
```
docker-compose up -d
```
2. Check running containers:
```
docker-compose ps
```

3. Access WordPress:

- Open browser → `http://localhost:8080`

- Complete WordPress setup (`admin user`, `site name`, `etc`.)

4. Stop containers:
```
docker-compose down
```
## Notes

- MySQL data persists in Docker volume `db_data`.

- WordPress files persist in Docker volume `wp_data`.

- Modify `.env` for custom database credentials.