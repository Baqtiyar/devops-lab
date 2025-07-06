# 🐳 Docker Commands Cheat Sheet

Hello everyone here's a quick reference for basic Docker commands with brief explanations.

## 📦 Image & Container Management

### `docker images`
Lists all Docker images available locally.

### `docker ps -a`
Shows all containers (running and stopped).

### `docker ps`
Displays only running containers.

### `docker run -it --name baqtiyarcontainer ubuntu /bin/bash`
Creates and runs a container named `baqtiyarcontainer` from the Ubuntu image in interactive terminal mode.

## 🔧 Docker Service

### `service docker start`
Starts the Docker service.

### `service docker status`
Displays the current status of the Docker service.

## ▶️ Container Lifecycle

### `docker start baqtiyarcontainer`
Starts the container named `baqtiyarcontainer`.

### `docker stop baqtiyarcontainer`
Stops the container named `baqtiyarcontainer`.

## 🔍 Searching & Pulling Images

### `docker search jenkins`
Searches Docker Hub for images related to Jenkins.

### `docker pull jenkins/jenkins`
Downloads the Jenkins image from Docker Hub.

## 🔄 Working with Containers

### `docker attach baqtiyarcontainer`
Attaches your terminal to a running container named `baqtiyarcontainer`.

### `docker rm baqtiyarcontainer`
Removes the container named `baqtiyarcontainer` (must be stopped first).
