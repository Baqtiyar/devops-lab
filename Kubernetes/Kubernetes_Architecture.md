# Kubernetes Architecture

## 📅 Today I Learned

I explored the architecture of Kubernetes and how its components work together to manage containerized applications at scale. I explored how the control plane makes decisions, how nodes run workloads, and how various components like `kube-apiserver`, `etcd`, and `kubelet` interact to maintain the desired state of the cluster.

These notes summarize the key components and concepts I studied as part of my learning journey.
## 📦 Core Components

### 1. **Control Plane Components** (Master Node)

- **kube-apiserver**  
  - Frontend of the Kubernetes control plane
  - This apiserver interacts directly with user (i.e we apply yml or json manifest to kube-apiserver)
  - This kube-apiserver is meant to scale automatically as per load. 
  - Acts as a gateway for all other components

- **etcd**  
  - Distributed, consistent key-value store for all cluster data
  - Stores configuration, state, and metadata (data of data)
  - Highly available and secure

- **kube-scheduler**  
  - Assigns pods to worker nodes based on resource requirements, constraints, and availability
  - Watches for unassigned pods in the queue

- **kube-controller-manager**  
  - Runs multiple controller loops (replication controller, endpoint controller, namespace controller, etc.)
  - Ensures desired state matches current state

- **cloud-controller-manager** *(optional)*  
  - Integrates with cloud providers (e.g., managing load balancers, nodes, routes)

---

### 2. **Node Components** (Worker Nodes)

These components run on every worker node and manage the containerized workloads.

- **kubelet**  
  - Agent running on each node
  - Communicates with the API server
  - Ensures that containers are running in a Pod as specified

- **kube-proxy**  
  - Maintains network rules on nodes
  - Handles routing of traffic to correct pod across nodes

- **Container Runtime**  
  - Software responsible for running containers (e.g., Docker, containerd, CRI-O)
  - Interfaces with kubelet via the Container Runtime Interface (CRI)

---

# 📦 Kubernetes Pod Overview

A **Pod** is the smallest and simplest deployable unit in Kubernetes.  
It represents a single instance of a running process in a cluster and can contain **one or more containers** that share:

- The same **network namespace**
- **Storage volumes**
- **Lifecycle**

Containers inside a Pod communicate via `localhost` and are usually tightly coupled, functioning as a single cohesive unit.

Pods are **ephemeral by design**—if a Pod crashes or is terminated, Kubernetes does not resurrect the same Pod but can create a new identical one through higher-level controllers like **Deployments**, **ReplicaSets**, or **StatefulSets**.

---

🛠️ Example Use Cases for Pods:
- Running a single-container application
- Co-locating helper containers (e.g., log shipper + main app)


## 🗺️ Cluster Flow Summary

1. `kubectl` sends request to `kube-apiserver`.
2. `kube-apiserver` validates request, stores data in `etcd`.
3. `scheduler` schedules pod on a suitable node.
4. `kubelet` on that node communicates with the runtime to launch containers.
5. `kube-proxy` ensures networking and service discovery is maintained.

---

## 📌 Additional Concepts

- **Pods**: Smallest deployable unit in Kubernetes (wraps one or more containers)
- **Services**: Abstraction to expose a set of Pods as a network service
- **ConfigMaps & Secrets**: Manage configuration and sensitive data
- **Namespaces**: Provide logical separation within a cluster

---
## 📚 Resources for Further Learning

- [Kubernetes Official Documentation](https://kubernetes.io/docs/)
---
