
# 🐳 What I Learned About Docker Today

## 🚀 Docker: A Modern Take on Virtualisation
Docker is considered an advanced form of virtualisation. Unlike traditional virtual machines (VMs) that virtualise entire hardware systems, Docker uses **containerization**, which means it virtualises the operating system level. This makes it more lightweight, faster to start, and less resource-intensive.

## 🔄 Dynamic Resource Usage
One of Docker’s biggest strengths is **on-demand resource utilisation**. Unlike VMs that allocate fixed amounts of CPU, RAM, and storage to each instance—regardless of whether those resources are being used—Docker containers **consume resources only when needed**. Once a container completes its task, it releases the resources, making the system more efficient.

## 🧪 Easy Sharing for Testing and Development
Docker simplifies collaboration between development and testing teams. A Docker image can be **shared like a file**—this means testers and other teams can run the exact same environment that developers used, eliminating the classic "it works on my machine" problem. This helps ensure consistency and reproducibility across environments.

## 🧠 Does Docker Have Its Own OS?
Technically, Docker containers **share the host OS kernel** rather than using a full operating system like VMs. However, containers **include their own user space**, which often contains a lightweight Linux distribution (like Alpine or Debian). This gives the appearance of a full OS but with much lower overhead. So, saying Docker has "its own OS" is **partially true**—the kernel is shared, but the user environment is isolated and customizable.

## 📌 Summary

| Feature                         | Docker                                       | Virtual Machine                          |
|---------------------------------|----------------------------------------------|-------------------------------------------|
| Type of Virtualization          | OS-level (container)                        | Hardware-level (full OS)                 |
| Resource Usage                  | Dynamic, on-demand                          | Fixed allocation                         |
| Startup Time                    | Seconds                                     | Minutes                                  |
| Image Sharing                   | Easy (via Docker Hub or registries)         | Difficult (large VM images)              |
| OS Isolation                    | Partial (shared kernel)                     | Full (own kernel)                        |

## What is Docker Architecture & Container?
- Docker is an open-source centralised platform designed to create, deploy and run applications.
- Docker is a tool that performs OS-level virtualisation, also known as containerization, whereas VMware/Virtual-Machine uses hardware-level virtualisation.
- Docker uses containers on the host OS to run applications. It allows applications to use the same Linux kernel on the host computers rather than creating a whole virtual OS.
- We can install Docker on any OS, but Docker Engine runs natively on a Linux distribution.
- Docker is written in the Go language.
- Before Docker, many users faced the problem that a particular code was running in the developer's system but not in the user's/tester's system.
- Docker was first released in March 2013. It is developed by Solomon Hykes and Sebastian Pahl.

## Advantages of Docker
- No pre-allocation of RAM.
- Less Cost
- You can re-use the image.
- It takes very little time to create a container.
- Docker enables you to build a container image and use that same image across every step of the deployment process.

## Disadvantages of Docker
- Docker is not a good solution for applications that require a rich GUI.
- Difficult to manage a large number of containers. 





