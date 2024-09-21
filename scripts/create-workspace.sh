#!/bin/bash

# Navigate to the 'tool' directory in the repository root
cd ./tool

# Create a workspace
rushx run-local create-workspace ws1 -w DevWorkspace

# Create a user account
rushx run-local create-account user1 -p 1234 -f John -l Appleseed

# Enable all modules
rushx run-local configure ws1 --list --enable '*'

# Assign the workspace to the user
rushx run-local assign-workspace user1 ws1

# Confirm the email for the user
rushx run-local confirm-email user1