# Install Cursor AI on Linux

This repository provides a simple script to install [Cursor](https://www.cursor.sh/) (AppImage) on Linux, including a desktop entry for easy access from your applications menu.

---

## ✅ Prerequisites

Make sure `curl` is installed on your system. On Ubuntu or Debian, run:

```bash
sudo apt-get update
sudo apt-get install -y curl
```

> 💡 For other distributions, use your package manager (`dnf`, `zypper`, `pacman`, etc.).

---

## 🚀 Installation

1. Download the installation script:

```bash
curl -O https://raw.githubusercontent.com/DanielXavierJob/install-cursor/main/install_cursor.sh
```

2. Make the script executable:

```bash
chmod +x install_cursor.sh
```

3. Run the script:

```bash
./install_cursor.sh
```

---

## 📦 What the Script Does

- **Checks Dependencies**: Installs `curl` if it's missing.
- **Downloads Cursor**: Fetches the Cursor AppImage.
- **Downloads Icon**: Retrieves the Cursor logo for your system menu.
- **Creates Desktop Entry**: Adds a `.desktop` file so Cursor can be launched from your application launcher.

---

## 🧠 Launching Cursor

Once the script finishes, open your application launcher and search for **Cursor AI**. Click it to launch and start coding with AI!

---

## 🛠️ Optional

You can move the AppImage to a custom directory like `~/Applications`, then update the `.desktop` file path if needed.

---

Made with ❤️ by [Daniel Xavier](https://github.com/DanielXavierJob) for the Linux community.
