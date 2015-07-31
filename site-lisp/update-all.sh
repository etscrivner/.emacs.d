#!/bin/sh
FILES=`ls -d */`
STARTDIR=`pwd`

for f in $FILES
do
    echo "Updating $f..."
    cd $f && git pull
    cd $STARTDIR
done
