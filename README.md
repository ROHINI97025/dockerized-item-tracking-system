# Dockerized Item Tracking System

## Project Overview

The Item Tracking System is a Python-based application designed to manage item records.

The system allows users to add, view, search, update, and delete items. Item information is stored in a JSON file so that the data can be retained when the program is closed.

This project was containerized using Docker and tested successfully inside a Docker container.

## Features

- Add a new item
- View all items
- Search for an item
- Update item details
- Delete an item
- Store data using JSON
- Validate item IDs and quantities

## Technologies Used

- Python
- Object-Oriented Programming (OOP)
- JSON
- File Handling
- Docker
- Dockerfile

## Docker Implementation

The application was packaged into a Docker image using a Dockerfile and executed inside a Docker container.

### Docker Workflow

```text
Python Application
       ↓
   Dockerfile
       ↓
   Docker Image
       ↓
 Docker Container
       ↓
Application Runs
```

### Build Docker Image

```bash
docker build -t item-tracking-system .
```

### Run Docker Container

Because the application accepts keyboard input, it is run in interactive mode:

```bash
docker run -it --name item-tracking-container item-tracking-system
```

### Check Docker Images

```bash
docker images
```

### Check Containers

```bash
docker ps -a
```

### View Container Logs

```bash
docker logs <container-name>
```

### Stop a Container

```bash
docker stop <container-name>
```

### Remove a Container

```bash
docker rm <container-name>
```

## Testing

The application was tested successfully inside the Docker container.

The following operations were verified:

- Add Item
- View Items
- Search Item
- Update Item
- Delete Item
- Exit

Example test data:

```text
ID: 101
Name: laptop
Category: Electronics
Quantity: 4
```

The item was successfully added and displayed by the application running inside the Docker container.

## Persistent Data

A bind mount was used to connect the local project directory with the `/app` directory inside the container.

```bash
docker run -it --name item-tracking-container -v "%cd%:/app" item-tracking-system
```

This allowed changes made to `items.json` by the containerized application to persist in the local project folder.

## Project Structure

```text
dockerized-item-tracking-system/
├── Dockerfile
├── .dockerignore
├── item_tracking_system.py
├── items.json
└── README.md
```

## Key Learning

This project provided hands-on practice with:

- Docker images and containers
- Dockerfiles
- Docker build and run commands
- Interactive containers
- Container troubleshooting
- Docker logs
- Bind mounts and persistent data
- Running a Python application inside a Docker container
