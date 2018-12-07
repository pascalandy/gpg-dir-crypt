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

echo "Encrypt"

zip -r ${DIR_NAME}.zip ${DIR_NAME}
rm -rf ${DIR_NAME}
gpg -c ${DIR_NAME}.zip
rm ${DIR_NAME}.zip
cd ..
zip -r "bkp-2018".zip "bkp-2018"

# clean clipboard
pbcopy < /dev/null

echo