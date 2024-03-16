#!/bin/bash

# Extract language and version from the tag
TAG="$1"  # Script argument will be the tag name
IFS=',' read -r language version <<< "$TAG"

# Validate extracted values (optional)
if [[ -z "$language" || -z "$version" ]]; then
  echo "Error: Invalid tag format. Expected 'language:version'."
  exit 1
fi

# Set environment variables
export LANGUAGE="$language"
export VERSION="$version"

echo "Language: $language"
echo "Version: $version"
