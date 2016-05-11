#!/bin/sh

#define a function
exportPath() {
FILE="/Users/hocnguyen/.bash_profile"
echo 'export '$1'='$2 > line.txt
CMD="$(cat line.txt)"
TEXT=$CMD FILE=$FILE $SHELL/insertHeadFile.sh
}

if [[ -z "$2" ]]
then
exportPath $1 $PWD
echo $PWD
else
exportPath $1 $2
echo $1
echo $2
fi
source ~/.bash_profile
