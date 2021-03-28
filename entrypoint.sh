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
# --- ENVIRONMENTAL VARIABLES ---
#
# The following environmental variables are required by the script:
#
# - DEPLOY_USER: string, user for the releases repo
# - DEPLOY_PASSWORD: string, password for the releases repo
#

# Fails if any commands returns a non-zero value
set -e

exit 0
