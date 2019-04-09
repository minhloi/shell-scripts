#!/usr/bin/env bash

SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null && pwd )"
PROJECT_DIR="${SCRIPT_DIR}/.."
cd "${PROJECT_DIR}"

PATCH_NAME="Fix something"
PATCH_URL=https://github.com/minhloi/react-native-navigation/commit/108e9b3b2d489916c92d3e9a6b0d461759915ea1.patch
echo "Downloading patch ${PATCH_NAME}."
curl -# -L "${PATH_URL}" > /tmp/1.patch

# Make sure don't patch multiple times
if ! patch -R -p1 -s -f --dry-run < /tmp/1.patch > /dev/null; then
  echo "Applying patch ${PATCH_NAME}."
  patch -p1 < /tmp/1.patch
  echo "Patch completed."
else
  echo "Patch ${PATCH_NAME} applied. Skipped"
fi
