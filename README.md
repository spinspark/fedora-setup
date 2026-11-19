# fedora-setup

Automated post-install provisioning for Fedora (GNOME & KDE) using Ansible.

## Usage on a Fresh Install

1. Install Fedora Workstation or Fedora KDE Plasma Desktop.
2. Open a terminal and run:

```bash
sudo dnf install -y git
git clone https://github.com/spinspark/fedora-setup.git
cd fedora-setup
./bootstrap.sh
```

## What It Does

- **`bootstrap.sh`**: Installs `ansible`, fetches required Ansible collections (`requirements.yml`), and executes `playbook.yml`.
- **`playbook.yml`**:
  - Enables RPM Fusion (Free & Nonfree)
  - Enables Flathub
  - Installs core system packages and Flatpak applications

## Re-running After Changes

This playbook is idempotent—you can pull updates and re-run it anytime safely:

```bash
cd ~/fedora-setup
git pull
ansible-playbook playbook.yml --ask-become-pass
```
