#!/bin/zsh
if ! grep -q 'ENCRYPTION_KEY' ~/.zshrc; then
  echo "export ENCRYPTION_KEY=$(openssl rand -base64 9 | head -c 12)" >> ~/.zshrc
fi
source ~/.zshrc