#!/bin/bash

# Check if conda is installed
if ! [ -x "$(command -v conda)" ]; then
  echo 'Error: conda is not installed.' >&2
  exit 1
fi

# Create conda environment

## Set envname to netsquid if not set
env_name=${env_name:-netsquid}

## Check if the environment already exists
if conda env list | grep -q "$env_name"; then
  echo "Error: conda environment '$env_name' already exists." >&2
  exit 1
fi

## Create the environment
echo "Creating conda environment: $env_name..."
conda env create --file=environment.yml --name="$env_name"