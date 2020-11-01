#!/bin/sh

LASTPATH=`pwd`
SHPATH=`dirname $0`

# go working path
cd $SHPATH


# make backup
cp  ~/.ssh/authorized_keys  ~/.ssh/authorized_keys.old

# generate tmpfile and add keys, clean tmpfile
cp  ~/.ssh/authorized_keys  ~/.ssh/authorized_keys.tmp
cat ./*.pub >> ~/.ssh/authorized_keys.tmp
cat  ~/.ssh/authorized_keys.tmp | sort -u > ~/.ssh/authorized_keys
rm -f =/.ssh/authorized_keys.tmp

# display
# FIXME: needed error handling...
echo "keyring update done. Here is keyring lists..."
cat ~/.ssh/authorized_keys | awk '{print $3}'


# get back last path
cd $LASTPATH
