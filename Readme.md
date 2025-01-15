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
Clone or download this repository, go to the root folder of this repository and run:

```sh
./bootstrap.sh
```

This will check if ansible is installed, install it if it's not yet installed, and run the main playbook with:
```sh
ansible-playbook main.yml --ask-become-pass
```
**NOTE:** you'll need to provide the sudo password and ansible vault password to decrypt my personal secrets. To avoid having to provide my personal secret key _(which you don't have)_, make sure to edit the file `bootstrap.sh` and remove the argument `--ask-vault-pass` and remove the following lines from `main.yml`:

```yml
- import_playbook: tasks/setup-ssh.yml
- import_playbook: tasks/clone-lilydevtools.yml 
```


## Quality Certificate
<img src="https://github.com/lily-gh/lily-gh/blob/main/img/works_on_my_machine.png" width="350" alt="Works on my machine" /> ![Kitty](https://github.com/lily-gh/lily-gh/blob/main/img/kitty_paws.gif)


## TODO
 - more apps
 - support arch
