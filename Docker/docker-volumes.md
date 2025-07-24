
# Docker Volumes: Named Volumes vs Bind Mounts

## 📦 What is a Named Volume?

A **named volume** is persistent storage managed by Docker. You assign it a name and it can be reused across multiple containers.

### ✅ Key Benefits:
- Persistent: Data survives even after container removal.
- Reusable: Easily mount the same volume to many containers.
- Isolated: Managed under Docker's internal storage.
- Portable: No dependency on host machine paths.

### 🔧 Create and Use a Named Volume

#### 1. Create a Volume

```bash
docker volume create myvolume
```

> ✅ This step is optional — Docker auto-creates the volume if it doesn't exist.

#### 2. Use it in a Container

```bash
docker run -it --name mycontainer -v myvolume:/app/data ubuntu
```

- `myvolume`: Name of the Docker-managed volume.
- `/app/data`: Path inside the container where volume is mounted.

#### 3. Share Volume with Another Container

```bash
docker run -it --name anothercontainer -v myvolume:/app/data ubuntu
```

> Both containers now share the same data inside `/app/data`.

### 🔍 Managing Named Volumes

```bash
docker volume ls               # List all volumes
docker volume inspect myvolume  # Inspect a specific volume
docker volume rm myvolume       # Remove a volume (if unused)
```

### 🗂️ Storage Location

Internally stored under:

```
/var/lib/docker/volumes/
```

---

## 🔁 What is a Bind Mount?

A **bind mount** maps a specific path on the host machine directly to a path in the container.

### ✅ Use Cases:
- Direct file access from host
- Development (live-reload code, logs)
- Sharing config/data files

### 🔧 Example:

```bash
docker run -it --name container1 -v $(pwd)/hostdata:/app/data ubuntu
```

- `$(pwd)/hostdata`: Host directory
- `/app/data`: Mount point in container

Any changes in either side (host or container) are reflected immediately.

---

## 📊 Comparison Table

| Feature                         | Named Volume              | Bind Mount                      |
|----------------------------------|----------------------------|----------------------------------|
| Host path control               | ❌ No                     | ✅ Yes                          |
| Docker-managed                  | ✅ Yes                    | ❌ No                           |
| Reusable between containers     | ✅ Yes                    | ✅ Yes                          |
| Good for dev/live code reload   | ❌ No                     | ✅ Yes                          |
| Best for                        | Persistent container data | Host ↔ Container file sync      |

---

## 📝 Summary

- Use **named volumes** when you want Docker to manage the data, and you want persistence across container deletions.
- Use **bind mounts** when you want to work directly with files on your host, such as for development or config sharing.

