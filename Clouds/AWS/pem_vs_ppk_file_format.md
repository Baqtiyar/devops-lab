
# `.pem` vs `.ppk` Files - Key Differences and Usage

## 🔑 What are `.pem` and `.ppk` Files?
Both are **private key files** used to securely connect to remote servers (like via SSH). They contain credentials needed for authentication.

---

## ✅ `.pem` File
- **Stands for**: Privacy Enhanced Mail
- **Used in**: Linux, macOS, AWS EC2
- **Format**: Base64 encoded text
- **Common Programs**: `ssh`, `scp`, `sftp`, AWS CLI
- **Example Content**:
  ```
  -----BEGIN RSA PRIVATE KEY-----
  ...
  -----END RSA PRIVATE KEY-----
  ```
- **Example Usage**:
  ```bash
  ssh -i mykey.pem user@server.com
  ```

---

## ✅ `.ppk` File
- **Stands for**: PuTTY Private Key
- **Used in**: Windows
- **Format**: PuTTY's proprietary format
- **Common Programs**: PuTTY, WinSCP, FileZilla
- **Note**: Not compatible with `ssh` commands directly

---

## 🔄 Key Differences

| Feature      | `.pem`                            | `.ppk`                          |
|--------------|------------------------------------|----------------------------------|
| System       | Linux / macOS / AWS                | Windows                          |
| Program      | ssh, scp, sftp                     | PuTTY, WinSCP, FileZilla         |
| Format       | OpenSSL (Base64 text)              | PuTTY's custom format            |
| Conversion   | No need if using ssh               | Needs conversion from `.pem`     |

---

## 🔁 Converting Between `.pem` and `.ppk`

### ✅ `.pem` ➡️ `.ppk` (for PuTTY)
1. Open **PuTTYgen**
2. Click **Load**, select the `.pem` file
3. Click **Save private key** to save as `.ppk`

### ✅ `.ppk` ➡️ `.pem` (for Linux/Mac)
1. Open **PuTTYgen**
2. Load your `.ppk` file
3. Go to **Conversions > Export OpenSSH key**
4. Save with `.pem` extension

---

## 🎯 When to Use Which?

| Use Case                  | Recommended File Type |
|---------------------------|------------------------|
| AWS CLI / Linux / Mac     | `.pem`                 |
| Windows + PuTTY / WinSCP  | `.ppk`                 |

---

*Created for quick reference.
