#!/bin/bash

echo "Setting up aliases..."

echo "\n" >> ~/.bashrc
echo "alias l=\"ls -l\"" >> ~/.bashrc
echo "alias ls=\"ls -l\"" >> ~/.bashrc
echo "alias la=\"ls -la\"" >> ~/.bashrc

source ~/.bashrc && echo "done setting up aliases"