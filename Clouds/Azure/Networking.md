# Understanding Networks

A **network** is a logical boundary within which multiple computers, servers, and nodes are interconnected and can communicate with each other. These nodes communicate through various mediums such as the **internet**, **Local Area Networks (LANs)**, or **Wide Area Networks (WANs)**.

Think of your social media platforms as separate networks. For example, if your friend is on **Snapchat**, you can't directly connect with them through **Facebook**. Similarly, **Twitter** and **Instagram** are separate networks—you can only send requests and interact within the same platform. This illustrates how networks have logical boundaries.

---

## Why Do We Create Networks?

The primary purpose of creating a network is to allow applications and systems to **communicate within a defined, secure boundary**. Networks provide **isolation and separation** to protect resources and ensure controlled communication.

For instance, a company like **Goldman Sachs** will have its own private network. Inside the organization, different teams might have their own **separate private networks**. These are isolated from one another, but when two teams need to interact, communication can be established—this requires specific **configurations or permissions**.

---

## Types of Networks

There are two main types of networks:

1. **Private Networks** – Used within organizations (e.g., company networks for internal teams).
2. **Public Networks** – Open networks like the internet, accessible to everyone.

# Understanding IP Addresses and Subnet Ranges for VMs

- When you create a **Virtual Network (VNet)**, you define a large IP address range for it (called a **CIDR block**), for example, `10.0.0.0/16`.
- Inside this VNet, you divide that big range into smaller parts called **subnets**. Each subnet gets its own smaller IP range, like:
  - **Subnet 1**: `10.0.1.0/24` (which means IPs from `10.0.1.1` to `10.0.1.254`)
  - **Subnet 2**: `10.0.2.0/24` (which means IPs from `10.0.2.1` to `10.0.2.254`)
- When you create a **Virtual Machine (VM)** inside a subnet, Azure automatically assigns it a **Private IP address** from that subnet’s range.
- This means every VM’s IP is **unique within the subnet and within the VNet**.

### IP Address Types

- **Private IP**: Assigned automatically from the subnet’s IP range; used for **internal communication**.
- **Public IP**: Optional; assigned if you want the VM accessible from **outside Azure**.

### Where Does the Public IP Come From in Azure?

- Allocated by **Azure from its pool of global public IP addresses**, when creating a virtual machine.
