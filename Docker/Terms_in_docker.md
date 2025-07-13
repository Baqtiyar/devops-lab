# Docker Overview

## Docker Engine
- The Docker daemon runs on the Host OS.
- It is responsible for running containers and managing Docker services.
- The Docker daemon can communicate with other daemons.

## Docker Client
- Docker users interact with the Docker daemon through a client (CLI).
- The Docker client uses commands and REST API to communicate with the Docker daemon.
- When a user runs commands on the Docker client terminal, these commands are sent to the Docker daemon.
- A Docker client can communicate with more than one daemon.

## Docker Host
- The Docker host provides an environment to execute and run applications.
- It contains the Docker daemon, images, containers, networks, and storage.

## Docker Hub / Registry
- Docker registries manage and store Docker images.
- There are two types of registries:
  - **Public Registry**: Also called Docker Hub.
  - **Private Registry**: Used to share images within an enterprise.

## Docker Images
- Docker images are read-only binary templates used to create Docker containers.
- They are single files containing all dependencies and configurations required to run a program.

### Ways to Create Docker Images
- Pull an image from Docker Hub.
- Create an image from a Dockerfile.
- Create an image from an existing Docker container.

## Docker Containers
- Containers hold the entire package needed to run an application.
- A container is like a lightweight virtual machine.
- Images become containers when they are run on the Docker engine.
