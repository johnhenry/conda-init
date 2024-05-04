#!/bin/bash

# Set environment file name
ENVFILE_NAME="environment.yml"

# Set the default environment name from command line or use the current directory name
default_env_name="${1:-$(basename "$PWD")}"

# Set the default Python version from command line or use a preset value
default_python_version="${2:-3.10.14}"

# Function to read user input with a prompt and default value
read_input() {
    local prompt=$1
    local default=$2
    local input
    read -p "$prompt ($default) " input
    echo "${input:-$default}"
}

# Obtain environment name and version from user
conda_env_name=$(read_input "Enter environment name" "$default_env_name")
conda_python_version=$(read_input "Enter environment version" "$default_python_version")

echo "Creating environment: $conda_env_name with python version: $conda_python_version"

# Create YAML content
file_content="name: $conda_env_name
channels:
  - defaults
dependencies:
  - python=$conda_python_version
"

# Write to environment file
echo "$file_content" > "$ENVFILE_NAME"
