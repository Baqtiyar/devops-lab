# 🐳 Docker CLI Flags Cheat Sheet

This document summarizes commonly used Docker run flags with brief descriptions and examples. Perfect for quick reference or study.

---

## 🏃‍♂️ Basic `docker run` Syntax

```bash
docker run [OPTIONS] IMAGE [COMMAND] [ARG...]
```

---

## 🔧 Commonly Used Flags

### `-d`, `--detach`
Run container in the background (detached mode).

```bash
docker run -d nginx
```

---

### `-e`, `--env`
Set environment variables inside the container.

```bash
docker run -e APP_ENV=production nginx
```

---

### `--env-file`
Load environment variables from a `.env` file.

```bash
docker run --env-file ./app.env ubuntu
```

---

### `--name`
Assign a custom name to your container.

```bash
docker run --name mynginx nginx
```

---

### `--rm`
Automatically remove the container when it exits.

```bash
docker run --rm ubuntu echo "Temporary container"
```

---

### `-it`
`-i` keeps STDIN open, `-t` allocates a pseudo-TTY — useful for interactive containers.

```bash
docker run -it ubuntu /bin/bash
```

---

### `-p`, `--publish`
Publish container ports to the host.

```bash
docker run -p 8080:80 nginx
```

---

### `-v`, `--volume`
Mount host volumes into the container.

```bash
docker run -v /host/data:/container/data ubuntu
```

Or use a named volume:

```bash
docker run -v myvolume:/app ubuntu
```

---

### `--mount`
More verbose and flexible alternative to `-v`.

```bash
docker run --mount type=bind,source=/host/data,target=/data ubuntu
```

---

### `--network`
Connect a container to a specific network.

```bash
docker run --network my_network nginx
```

---

### `--privileged`
Gives extended Linux capabilities to the container (e.g., for system-level access).

```bash
docker run --privileged ubuntu
```

---

### `--volumes-from`
Mount volumes from another container.

```bash
docker run --volumes-from container1 ubuntu
```

---

### `--restart`
Control container restart policy.

```bash
docker run --restart unless-stopped nginx
```

Options: `no`, `always`, `on-failure`, `unless-stopped`

---

## 🧼 Useful Commands

### List all running containers
```bash
docker ps
```

### List all containers (including stopped)
```bash
docker ps -a
```

### List all volumes
```bash
docker volume ls
```

### Inspect container
```bash
docker inspect container_name
```

---

## 📂 Related Files

- `.env` → used with `--env-file`
- `Dockerfile` → defines how an image is built
- `docker-compose.yml` → used with `docker-compose` for multi-container apps

---

## 🙌 Contribute

Feel free to fork this file and add more flags or examples!
