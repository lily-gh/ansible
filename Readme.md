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
_(you'll need to provide the sudo password and ansible vault password)_
```sh
ansible-playbook main.yml --ask-become-pass
```
```sh
ansible-playbook main.yml --ask-become-pass --ask-vault-pass
```


## Quality Certificate
<img src="https://github.com/lily-gh/devtools/blob/img/img/works_on_my_machine.png" width="350" alt="Works on my machine" /> ![Kitty](https://github.com/lily-gh/devtools/blob/img/img/kitty_paws.gif)


## TODO
  - automate iterm2 install on macos
  - asdf for java?
  - automate installation of:
    - vscode
    - edge
    - firefox
    - 1password
  - add Maple Mono font
