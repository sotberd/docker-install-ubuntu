# 🐳 Docker Installation Script for Ubuntu

This script automates the installation of **Docker** and the **Docker Compose** **version** on **Ubuntu**. It takes care of setting up the official Docker repository, installing the required packages, and verifying the installation.

---

## 🚀 Features

- Installs Docker Engine, CLI, and Containerd.
- Installs Docker Buildx and Compose plugins.
- Adds Docker's official GPG key and repository.
- Verifies the installation.

---

## 📋 Prerequisites

- An Ubuntu-based system.
- `curl` and `sudo` must be available.

---

## 📥 Installation

1. **Download the script:**

   ```bash
   curl -O https://raw.githubusercontent.com/sotberd/docker-install-ubuntu/main/scripts/install-docker.sh
   ```

2. **Make it executable:**

   ```bash
   chmod +x install-docker.sh
   ```

3. **Run the script:**
   ```bash
   ./install-docker.sh
   ```
4. **Enable Docker service to start on boot:**
   ```bash
    sudo systemctl enable docker
   ```

## 🛑 Troubleshooting

If you encounter any issues:

1. **Ensure your system is up to date:**

```bash
sudo apt update && sudo apt upgrade -y
```

2. **Check if Docker is running:**

```bash
sudo systemctl status docker
```

3. **Reboot if necessary:**

```bash
sudo reboot
```

## 📜 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.
