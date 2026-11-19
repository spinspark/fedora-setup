#!/usr/bin/env bash
set -euo pipefail

sudo dnf install -y git ansible
ansible-galaxy collection install -r requirements.yml
ansible-playbook playbook.yml --ask-become-pass
