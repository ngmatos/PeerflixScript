#!/bin/sh
echo "Using Peerflix script"

MAGNET=$1

if [ "$#" -eq 1 ] 
then
    PEERPATH=$PEERFLIX_PATH
    if [ -v $PEERPATH ]
    then
        echo "ERROR: Peerflix path is not set as environment variable"
        echo "USAGE: export PEERFLIX_PATH=[path]"
    elif [ ! -d $PEERPATH ]
    then
        echo "ERROR: Exported path is not a known directory"
        echo "Try to export to /tmp/"
    else
        echo "SUCCESS: Movie will now start soon"
        peerflix $1 --vlc -f $PEERPATH
    fi
else
    echo "ERROR: Expecting 1 argument!"
    echo "USAGE -> peerflix.sh [magnetLink]"
fi
