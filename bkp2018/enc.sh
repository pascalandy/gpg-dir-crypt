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
date="$(date +%Y-%m-%d_%HH%M_%S)";

clear

echo "Encrypt"

# sensitive
zip -r ${sensitive}.zip ${sensitive}
rm -rf ${sensitive}
gpg -c ${sensitive}.zip
rm ${sensitive}.zip
# clean clipboard
pbcopy < /dev/null

# back to root
cd ..
zip -r ${date}.zip ${rootdir}

echo
