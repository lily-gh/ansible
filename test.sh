#!/bin/bash


# Get the python base path
PYTHON_BASEPATH=$(python3 -m site --user-base)

# Add the base bin directory of preinstalled python to PATH
export PATH="$PATH:$PYTHON_BASEPATH/bin"

ansible-playbook test.yml --ask-become-pass