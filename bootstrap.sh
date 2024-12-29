#!/bin/bash

# todo: make it work for both macos and ubuntu/arch

# Install xcode command line tools
#xcode-select --install

# Install ansible using pip in user mode
#python3 -m pip install --user ansible --ignore-installed

# Get the python base path
PYTHON_BASEPATH=$(python3 -m site --user-base)

# Add the base bin directory of preinstalled python to PATH
export PATH="$PATH:$PYTHON_BASEPATH/bin"

ansible-galaxy install -r requirements.yml

ansible-playbook main.yml --ask-become-pass

