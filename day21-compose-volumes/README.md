# Day 21: Volumes in Compose (Persistent Data)

This project demonstrates how to use **Docker volumes** in a `docker-compose.yml` file to persist data.

## 📂 Repo Structure
```
day21-compose-volumes/
├── docker-compose.yml
├── app/
│   ├── Dockerfile
│   ├── package.json
│   └── index.js
└── README.md
```
## 🚀 Steps

1. Build and run containers
   ```
   docker-compose up --build -d
   ```
2. Add notes (data will be stored in the volume)
    ```
    curl http://localhost:3000/add/Hello
    curl http://localhost:3000/add/Docker
    ```
3. View notes
    ```
    curl http://localhost:3000/
    ```
4. Stop and remove container
    ```
    docker-compose down
    ```
5. Start again and check notes (data persists!)
    ```
    docker-compose up -d
    curl http://localhost:3000/
    ```
Data is stored in `app_data` volume → even if container is removed, the notes remain.