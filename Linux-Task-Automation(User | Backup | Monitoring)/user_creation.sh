#!/bin/bash

# Script: user_creation.sh
# Purpose: Automate user creation in Linux

echo "Enter username to create:"
read username

# Check if user already exists
if id "$username" &>/dev/null; then
    echo "User '$username' already exists."
else
    sudo useradd -m -s /bin/bash "$username"
    echo "User '$username' created successfully."
    # Set password for new user
    echo "Set password for $username:"
    sudo passwd "$username"
fi
