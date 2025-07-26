# Kubernetes

Kubernetes is an open-source container management tool that automates:

- Container deployment  
- Container scaling  
- Load balancing  

It schedules, runs, and manages isolated containers across virtual, physical, or cloud-based machines. All major cloud providers support Kubernetes.

## Background

Google initially developed an internal system called **Borg**, which was later evolved into **Omega**, to deploy and manage thousands of Google applications and services across their clusters.

In **2014**, Google introduced **Kubernetes**, an open-source platform written in **Go** (Golang), and later donated it to the **Cloud Native Computing Foundation (CNCF)**.

## Problems with Scaling up the Containers. 
 - Container cannot communicate with each other. 
 - Autoscaling and load balancing was not possible. 
 - Containers had to be managed carefully. 