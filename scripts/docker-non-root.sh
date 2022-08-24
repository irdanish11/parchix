#!/bin/bash

# Create the docker group.
sudo groupadd docker

# Add your user to the docker group.
sudo usermod -aG docker $USER

# activate the changes to groups
newgrp docker
