#!/bin/bash
# configuring global email and name for github
read -p 'Enter Global Email for Git: ' global_email
git config --global user.email "$global_email"

read -p 'Enter Global Name for Git: ' global_name
git config --global user.name "$global_name"
 
# source: https://docs.github.com/en/enterprise-server@3.0/authentication/connecting-to-github-with-ssh/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent

read -p 'Enter your email associated to GitHub: ' mail

# Generating a new SSH key
ssh-keygen -t ed25519 -C "$mail"

# Start the ssh-agent in the background. 
eval "$(ssh-agent -s)"

# Add your SSH private key to the ssh-agent.
ssh-add ~/.ssh/id_ed25519

# displayin ssh key
echo ""

echo -n "The SSH key displayed below copy and paste to GitHub SSH/GPG keys section"

echo -n ""

cat ~/.ssh/id_ed25519.pub
