#!/bin/sh
#
# Function for creating the Pypi settings file for the CI process, storing it in the
# ~/.pypirc path.
#
# It will take care of the following data:
# - Deployment credentials
#
# REMEMBER: For security reasons the data stored in the generated file should not be
# shared. Never print it on the console or let it be accessed in any way.
#

# Fails if any commands returns a non-zero value
set -e

username=${1:-}
password=${2:-}

settings_path=".pypirc"

# The contents of the file are created
{
   echo "[distutils]

index-servers =
    pypi

[pypi]
username: $username
password: $password
} >> ${settings_path}

echo "Created Maven settings file at ${settings_path}"

exit 0
