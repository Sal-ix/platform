#!/bin/bash

# Navigate to the 'dev' directory
cd ./dev/

# Use Rush to build all required packages and prepare the environment
rush build
rush bundle
rush package
rush validate
rush svelte-check  # Optional step for validating Svelte files

# Start the development server
rushx dev-server