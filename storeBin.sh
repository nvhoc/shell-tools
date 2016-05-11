#!/bin/sh

#define a function
storeBin() {
#are you sure?
read -p "Are you sure? " -n 1 -r
echo    # (optional) move to a new line
if [[ ! $REPLY =~ ^[Yy]$ ]]
then
    exit 1
fi
FILE="/Users/hocnguyen/.bash_profile"
echo 'export PATH=$PATH:'$PWD > line.txt
CMD="$(cat line.txt)"
TEXT=$CMD FILE=$FILE $HELPERS/insertHeadFile.sh
source $FILE
}

storeBin $PWD
