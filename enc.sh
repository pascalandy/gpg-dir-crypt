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

echo "Encrypt"

zip -r vault.zip vault
rm -rf vault
gpg -c vault.zip
rm vault.zip

echo