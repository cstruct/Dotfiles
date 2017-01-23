#!/bin/bash

# Make sure homebrew is installed
if [[ ! "$(type -P brew)" ]]; then
  echo "Installing Homebrew"
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# Make sure Ansible is installed
if [[ ! "$(type -P ansible)" ]]; then
  echo "Installing Ansible"
  brew install ansible
fi

ansible-playbook playbook.yml
