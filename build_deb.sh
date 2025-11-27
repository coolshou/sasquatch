#!/bin/sh

#

if command -v dpkg-buildpackage >/dev/null 2>&1; then
    echo "dpkg-buildpackage is installed."
else
    echo "dpkg-buildpackage is NOT installed."
    # You may want to install it here:
    echo " sudo apt update && sudo apt install dpkg-dev"
    exit
fi

dpkg-buildpackage -b --no-sign
