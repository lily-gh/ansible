#!/bin/bash


USER_BASE=$(python3 -m site --user-base)
ANSIBLE_PATH=$(find "$USER_BASE/lib/" -type d -path "*/site-packages/ansible" 2>/dev/null)

if [ -n "$ANSIBLE_PATH" ]; then
  echo "Ansible is already installed at: $ANSIBLE_PATH"
else
  echo "Installing Ansible using pip..."
fi

#ansible-playbook test.yml --ask-become-pass