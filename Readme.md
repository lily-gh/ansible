# Ansible automations
The goal is to easily make a new machine developer-ready for me by installing my favorite developer tooling and configurations.

This should work flawlessly on both macOS and debian-based linux distros (tested in Ubuntu/Linux Mint)

### Packages
Running the main playbook will install the following packages:
  - bat
  - ffmpeg
  - fzf
  - git
  - gpg
  - eza
  - zsh
  - zsh-syntax-highlighting
  - zsh-autosuggestions
  - oh-my-zsh
  

### How to use
First, install ansible:

On Ubuntu:
```sh
sudo apt-get install ansible
```

On MacOS:
```sh
pip install ansible
```

Then execute the main ansible playbook:
```sh
ansible-playbook main.yml --ask-vault-pass
```
