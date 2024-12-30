#!/bin/bash

# Check the platform
OS=$(uname)

if [ "$OS" == "Darwin" ]; then
  # macOS specific tasks

  # Install Xcode Command Line Tools if not installed
  if ! xcode-select --print-path &>/dev/null; then
    echo "Installing Xcode Command Line Tools..."
    xcode-select --install

    # Wait for the Xcode installation to complete
    until xcode-select --print-path &>/dev/null; do
      echo "Waiting for Xcode installation to finish..."
      sleep 5
    done

    echo "Xcode Command Line Tools installed."
  else
    echo "Xcode Command Line Tools already installed. ✅"
  fi

  # Check if Ansible is already installed
  USER_BASE=$(python3 -m site --user-base)
  ANSIBLE_PATH=$(find "$USER_BASE/lib" -type d -path "*/site-packages/ansible" 2>/dev/null)

  if [ -n "$ANSIBLE_PATH" ]; then
    echo "Ansible is already installed at: $ANSIBLE_PATH"
  else
    echo "Installing Ansible using pip..."
    python3 -m pip install --user ansible --ignore-installed
  fi

  # Get the Python base path
  PYTHON_BASEPATH=$(python3 -m site --user-base)

  # Add the base bin directory of preinstalled Python to PATH
  export PATH="$PATH:$PYTHON_BASEPATH/bin"

  # assures homebrew is installed
  ansible-galaxy install -r requirements.yml
else
  # Linux/Ubuntu specific tasks

  # Check if Ansible is installed
  if ! command -v ansible &>/dev/null; then
    echo "Installing Ansible with apt..."
    sudo apt update && sudo apt install -y ansible
  else
    echo "Ansible is already installed."
  fi

fi

# Run the playbook
ansible-playbook main.yml --ask-become-pass
