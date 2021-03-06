#!/bin/bash

UNAME=`uname  2>/dev/null`
if [ "$UNAME" = 'Darwin' ]; then 
    echo "This software requires Ubuntu Linux.  For installation on a Mac using a VM, run \"make vminit ... vagrant ssh ... make\"."
    exit
fi

DIST=`lsb_release -i 2>/dev/null | awk '{ print $3 }'`
if [ "$DIST" != 'Ubuntu' ]; then 
    echo "This software requires Ubuntu Linux.  Found distribution "$DIST".  Try \"make vminit ... vagrant ssh ... make\"."
    exit
fi
echo "Distribution: $DIST"

VERSION=`lsb_release -r | awk '{ print $2 }'`
echo "Release: $VERSION"
if [ "$VERSION" != 12.04 ]; then 
    echo "This software requires Ubuntu Linux 12.04 (Precise).  Found $VERSION.  Upgrade, or use \"make vminit ... vagrant ssh ... make\"."
    exit
fi

[ `which make` ] || sudo apt-get install -q -y make || echo "*** Failed to install 'make'!!!!" 
[ `which ssh` ] || sudo apt-get install -q -y ssh|| echo "*** Failed to install 'ssh'!!!!"
time make

