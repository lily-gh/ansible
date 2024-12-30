#!/bin/bash

 if [ ! -d "$(python3 -m site --user-base)/lib/python3.*/site-packages/ansible" ]; then
    echo "Installing Ansible using pip..."
  else
    echo "Ansible is already installed."
  fi

#ansible-playbook test.yml --ask-become-pass