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

printf "\nThe SSH key displayed below copied to the clipboard to GitHub SSH/GPG keys section:\n\n"

cat ~/.ssh/id_ed25519.pub | awk '{split($0, a, " "); print a[1],a[2]}' | xclip clip

cat ~/.ssh/id_ed25519.pub | awk '{split($0, a, " "); print a[1],a[2]}' 
