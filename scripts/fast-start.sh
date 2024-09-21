#!/bin/bash

# Execute pre-setup steps
sh ./scripts/presetup-rush.sh

# Build the project
sh ./scripts/build.sh

# Create and configure workspace
sh ./scripts/create-workspace.sh
