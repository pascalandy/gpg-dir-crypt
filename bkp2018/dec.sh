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

sensitive="vault"
rootdir="bkp2018"
clear

echo "Decrypt - Ensure you are withing DIR bkp2018"

gpg ${sensitive}.zip.gpg
unzip ${sensitive}.zip
rm -rf ${sensitive}.zip.gpg
rm -rf ${sensitive}.zip

# clean clipboard
pbcopy < /dev/null

echo