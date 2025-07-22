
# 🐳 Difference Between `RUN` and `CMD` in Dockerfile

Understanding the roles of `RUN` and `CMD` in a Dockerfile is crucial for efficient Docker image creation and container behavior.

---

## 🛠️ RUN

- **Purpose**: Executes commands **while building the image**.
- **When it runs**: During `docker build`.
- **Use cases**:
  - Install packages and dependencies
  - Create directories and files
  - Modify the filesystem
- **Creates a new layer** in the image.
- **Cannot be overridden** at runtime.

### 🔧 Example:
```dockerfile
FROM ubuntu
RUN apt update && apt install -y python3
RUN mkdir /app
```

> These commands are executed once during image build and become part of the image.

---

## 🚀 CMD

- **Purpose**: Sets the **default command** to run **when the container starts**.
- **When it runs**: During `docker run`.
- **Use cases**:
  - Start an application or server inside the container
  - Provide a default behavior
- **Does NOT create a new image layer**.
- **Can be overridden** at runtime.

### 🔧 Example:
```dockerfile
FROM ubuntu
RUN apt update && apt install -y python3
CMD ["python3"]
```

> When the container runs, it starts with `python3` unless overridden.

---

## 🔄 Comparison Table

| Feature               | `RUN`                               | `CMD`                                 |
|-----------------------|--------------------------------------|----------------------------------------|
| Executes during       | `docker build`                      | `docker run`                          |
| Purpose               | Build image setup                   | Default startup command               |
| Creates image layer?  | ✅ Yes                               | ❌ No                                  |
| Can be overridden?    | ❌ No                                | ✅ Yes (using `docker run <cmd>`)     |
| Typical use           | Install software, configure system | Start app, script, or server          |

---

## 🧠 Analogy

- `RUN` = Chef preparing the meal during cooking.
- `CMD` = Instructions on how to serve or reheat the meal.

---

## ✅ Final Example

```dockerfile
FROM node:18

# Setup during build
RUN mkdir /app
WORKDIR /app
COPY . .
RUN npm install

# Default command when container starts
CMD ["node", "index.js"]
```

---

**By understanding when and how to use `RUN` vs `CMD`, you can build better, cleaner, and more efficient Docker images.**
