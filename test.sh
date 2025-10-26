#!/bin/bash

# Check the platform
OS=$(uname)

ansible-galaxy install geosword.ansible.archyay

# Run the playbook
ansible-playbook test.yml --ask-become-pass
