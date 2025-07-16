# Why Companies Moved to Cloud?

Let’s consider a clothing company that wants to expand its business globally. To support such growth using a traditional IT infrastructure, the company would need to invest heavily in setting up its own on-premises data centre.

## 🏢 Traditional Data Centre Setup

### 1. Physical Space
- **2000 sq. feet Data Center** required to house servers, storage, networking, and cooling infrastructure.

### 2. Hardware (Servers)
- **100 Physical Servers:**
  - 30 dedicated to infrastructure services
  - 70 dedicated to application services, such as:
    - Ad Server, E-commerce Web Server, Billing Server, DHCP Server, DNS Server, Antivirus Server, Firewall Server, and other specialized Servers.
- **Server Configuration (per server):** 4GB RAM, 2 CPUs, 1 TB Hard Disk
  - Servers consist of compute (CPU/GPU + memory), storage, and network components.

### 3. Storage
- 100 Physical Disks (or more) for data storage on each server.

### 4. Cooling Systems
- Many servers generate significant heat.
- Requires air conditioning systems to cool the entire data centre.
  - This adds both **CapEx** (installation) and **OpEx** (monthly electricity bills).

### 5. Networking & Cabling
- Extensive cabling and power whips are required to:
  - Interconnect servers and provide internet access.

### 6. Power & Backup
- Continuous electricity supply is critical.
- Must include power backup systems (UPS, generators) to handle outages.

### 7. 24/7 Staffing
- Need for round-the-clock technical staff:
  - Network engineers, System administrators, Hardware support staff, Security teams, Linux administrators, storage administrators.
- High operational cost due to salaries and shift work.

Even after setting up all 100 servers, they are not always utilized at full capacity. For example:
- Payroll servers are only used during pay cycles.
- Billing servers may see peak usage at the end of the month.

The key point is that several servers are only required for specific tasks at certain times, meaning they remain idle or underutilized for the rest of the time.

> **Example:** Boeing had offices worldwide and operated on-premises infrastructure before adopting the cloud.

## Why Move to the Cloud?

Companies migrate to the cloud due to several key factors:

1. **Governance**
   - Data sovereignty laws (e.g., Indian data must stay within India).
   - *Example:* The FBI uses Azure and ensures their data stays within the U.S.

2. **Latency**
   - To reduce delays and improve performance for end-users.

3. **Electricity & Power Availability**
   - Some regions have more reliable or cost-effective power.

4. **Disaster Recovery (DR)**
   - Cloud providers offer robust DR capabilities across multiple regions.

5. **Return on Investment (ROI)**
   - Before ROI, there is heavy CapEx and OpEx expenditure.

6. **Scalability**
   - In Cloud you can do Auto-scaling.

7. **Speed**

8. **Cost-effective**

9. **Use Case Specific Needs**
   - Every organization has a primary reason to move to cloud.
   - *Examples:*
     - Banks prioritize governance.
     - Tech companies may focus on latency.
     - 



# Types of Cloud Services

There are three main types of cloud services:

- **Infrastructure as a Service (IaaS)**
- **Platform as a Service (PaaS)**
- **Software as a Service (SaaS)**

---

## Understanding Infrastructure

Examples of infrastructure in different domains:

- **For College** – whiteboard, benches, computers, paper, pens, etc.
- **For Hospital** – medicine, ICU, beds, surgical equipment, etc.
- **For IT** – 
  - **Server**: CPU/GPU, RAM  
  - **Storage**: HDD, SSD  
  - **Network**: Router, Switches, Gateway, Firewalls  
  - **Internet connectivity**

If you get these components from the cloud, it is called **Infrastructure as a Service (IaaS)**.

In IaaS, the user can manually configure everything — including CPU, memory, and storage — just like setting up a physical machine.

---

## Platform as a Service (PaaS)

PaaS includes everything in IaaS plus:

- Operating System (OS)
- Middleware
- Runtime Environments

It provides a **pre-configured platform** where developers can deploy and manage applications without worrying about the underlying infrastructure.

# Types of Cloud Deployment Models

## 1. Public Cloud

### Key Points:
- Accessible to anyone via the internet across the globe.
- **Examples**:
  - AWS (Amazon Web Services)
  - Microsoft Azure
  - Google Cloud Platform
  - Oracle
  - Alibaba
  - IBM Cloud
- **Secure**: Data is not exposed to others; uses encryption techniques, compliance, and access controls.

---

## 2. Private Cloud

### Key Points:
- Hosted either on-premises or by a third-party provider but for one client only.
- More expensive to set up and manage.
- **Used by**: Large enterprises, government agencies.
- **Tool**: OpenStack is a common tool to deploy and manage private cloud environments.

---

## 3. Hybrid Cloud

### Key Points:
- **Public + Private**
- Like a hybrid vehicle — uses both fuel and battery as needed.
- **Flexibility**: Use public cloud for general workloads and private cloud for sensitive data.
- **Enables**: Cost optimization.
- **Example use case**: A company runs its sensitive payroll app on private cloud but uses public cloud for employee training apps.

