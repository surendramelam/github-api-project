#!/bin/bash

########################################
# Script Name: list-users.sh
# Purpose   : List users who have access
#             to a GitHub repository
# Author    : surendra
########################################

# Check arguments
if [ $# -ne 2 ]; then
  echo "Usage: $0 <repo_owner> <repo_name>"
  exit 1
fi

REPO_OWNER=$1
REPO_NAME=$2

API_URL="https://api.github.com/repos/$REPO_OWNER/$REPO_NAME/collaborators"

# Check environment variables
if [ -z "$GITHUB_USERNAME" ] || [ -z "$GITHUB_TOKEN" ]; then
  echo "Error: GITHUB_USERNAME and GITHUB_TOKEN must be set"
  exit 1
fi

echo "Listing users with access to $REPO_OWNER/$REPO_NAME"
echo "-----------------------------------------------"

curl -s -u "$GITHUB_USERNAME:$GITHUB_TOKEN" "$API_URL" | \
jq -r '.[] | select(.permissions.pull == true) | .login'

