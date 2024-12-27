#!/bin/bash

# todo: make it work for both macos and ubuntu/arch

# Get the user base path
PYTHON_BASEPATH=$(python3 -m site --user-base)

# Install ansible using pip in user mode
python3 -m pip install --user ansible

# Add the user base bin directory to PATH
export PATH="$PATH:$PYTHON_BASEPATH/bin"

ansible-playbook main.yml --ask-become-pass