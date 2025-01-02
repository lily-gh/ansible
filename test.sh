#!/bin/bash


USER_BASE=$(python3 -m site --user-base)
ANSIBLE_PATH=$(find "$USER_BASE/lib" -type d -path "*/site-packages/ansible" 2>/dev/null)

if ! command -v ansible &>/dev/null; then
    echo "Installing Ansible with apt..."
else
    echo "Ansible is already installed."
fi

ansible-playbook test.yml --ask-become-pass