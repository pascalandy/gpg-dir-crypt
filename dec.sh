#!/usr/bin/env bash
###############################################################################
# Bash best practice
###############################################################################
set -o errexit
trap 'echo "Aborting due to errexit on line $LINENO. Exit code: $?" >&2' ERR
set -o errtrace
set -o nounset
###############################################################################
# Functions
###############################################################################

echo "Decrypt"

gpg vault.zip.gpg
rm -rf vault.zip.gpg
unzip vault.zip
rm -rf vault.zip
cd vault

echo