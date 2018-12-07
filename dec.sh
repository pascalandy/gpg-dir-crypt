#!/usr/bin/env bash

# A better class of script
set -o errexit          # Exit on most errors (see the manual)
set -o errtrace         # Make sure any error trap is inherited
set -o nounset          # Disallow expansion of unset variables
set -o pipefail         # Use last non-zero exit code in a pipeline
#set -o xtrace          # Trace the execution of the script (debug)

###############################################################################
# Functions
# Made for OS X
###############################################################################

DIR_NAME="vault"
clear

echo "Decrypt"

gpg ${DIR_NAME}.zip.gpg
unzip ${DIR_NAME}.zip
rm -rf ${DIR_NAME}.zip.gpg
rm -rf ${DIR_NAME}.zip

# clean clipboard
pbcopy < /dev/null

echo