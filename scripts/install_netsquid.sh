#!/bin/bash

# Check if pip3 is installed
if ! [ -x "$(command -v pip3)" ]; then
  echo 'Error: pip is not installed.' >&2
  exit 1
fi

# Check if NETSQUID_USER variable is set
if [ -z "$NETSQUID_USER" ]; then
  echo 'Error: NETSQUID_USER is not set.' >&2
  exit 1
fi

# Check if NETSQUID_PASSWORD variable is set
if [ -z "$NETSQUID_PASSWORD" ]; then
  echo 'Error: NETSQUID_PASSWORD is not set.' >&2
  exit 1
fi

# Install netsquid
pip3 install --extra-index-url https://"$NETSQUID_USER:$NETSQUID_PASSWORD"@pypi.netsquid.org netsquid