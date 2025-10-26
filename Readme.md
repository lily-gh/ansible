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
#### On Ubuntu/MacOS
Clone or download this repository, go to the root folder of the repository and run:

```sh
./bootstrap.sh
```

#### On Arch
Since Arch usually doesn't come with `unzip` preinstalled, the best option is to use `bsdtar` that comes preinstalled. Here's a _one-liner_ to download this repository as a `zip` file, unzip it using `bsdtar` and `cd` into the repository folder:

```bash
curl -L -o ~/Downloads/ansible.zip https://github.com/lily-gh/ansible/archive/refs/heads/main.zip && cd ~/Downloads && bsdtar -xf ansible.zip && cd ansible-main
```

The main `bootstrap.sh` script will check if ansible is installed and install it if it's not installed, and automatically run the main playbook with:
```sh
ansible-playbook main.yml --ask-become-pass --ask-vault-pass 
```

On MacOS, it will ensure homebrew is installed before proceeding to run the main playbook.

**NOTE:** you'll need to provide the sudo password for installing applications and ansible vault password to decrypt the included secrets. To avoid having to provide my personal secret key _(which you don't have)_, make sure to edit `bootstrap.sh` and remove the argument `--ask-vault-pass` and remove the following lines from `main.yml`:

```yml
- import_playbook: tasks/setup-ssh.yml
- import_playbook: tasks/clone-lilydevtools.yml 
```


## Quality Certificate
<img src="https://github.com/lily-gh/lily-gh/blob/main/img/works_on_my_machine.png" width="350" alt="Works on my machine" /> ![Kitty](https://github.com/lily-gh/lily-gh/blob/main/img/kitty_paws.gif)
